# exists_pos_real_of_irrational_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b3b43100ade222c01088fbb6b0fd31e3fd7f646",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b2f1f0f-99ab-73dd-b59d-9de424167c7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:950f988e-e64f-a627-fa3e-cda3dd9b1c1d",
  "kind": "theorem",
  "lexical_name": "exists_pos_real_of_irrational_root",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exists-pos-real-of-irrational-root--6ac2a6c5cde5e76843232284",
  "source": {
    "blob": "3b3b43100ade222c01088fbb6b0fd31e3fd7f646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 123,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac2a6c5cde5e76843232284cc115cfd26b4262d6294c5dacd5536a2c0d86baf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:950f988e-e64f-a627-fa3e-cda3dd9b1c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_real_of_irrational_root {α : ℝ} (ha : Irrational α) {f : ℤ[X]} (f0 : f ≠ 0)
    (fa : eval α (map (algebraMap ℤ ℝ) f) = 0) :
    ∃ A : ℝ, 0 < A ∧ ∀ a : ℤ, ∀ b : ℕ,
      (1 : ℝ) ≤ ((b : ℝ) + 1) ^ f.natDegree * (|α - a / (b + 1)| * A) := by
  -- `fR` is `f` viewed as a polynomial with `ℝ` coefficients.
  set fR : ℝ[X] := map (algebraMap ℤ ℝ) f
  -- `fR` is non-zero, since `f` is non-zero.
  obtain fR0 : fR ≠ 0 := fun fR0 =>
    (map_injective (algebraMap ℤ ℝ) fun _ _ A => Int.cast_inj.mp A).ne f0
      (fR0.trans (Polynomial.map_zero _).symm)
  -- reformulating assumption `fa`: `α` is a root of `fR`.
  have ar : α ∈ (fR.roots.toFinset : Set ℝ) :=
    Finset.mem_coe.mpr (Multiset.mem_toFinset.mpr ((mem_roots fR0).mpr (IsRoot.def.mpr fa)))
  -- Since the polynomial `fR` has finitely many roots, there is a closed interval centered at `α`
  -- such that `α` is the only root of `fR` in the interval.
  obtain ⟨ζ, z0, U⟩ : ∃ ζ > 0, closedBall α ζ ∩ fR.roots.toFinset = {α} :=
    @exists_closedBall_inter_eq_singleton_of_discrete _ _ _ discrete_of_t1_of_finite _ ar
  -- Since `fR` is continuous, it is bounded on the interval above.
  obtain ⟨xm, -, hM⟩ : ∃ xm : ℝ, xm ∈ Icc (α - ζ) (α + ζ) ∧
      IsMaxOn (|fR.derivative.eval ·|) (Icc (α - ζ) (α + ζ)) xm :=
    IsCompact.exists_isMaxOn isCompact_Icc
      ⟨α, (sub_lt_self α z0).le, (lt_add_of_pos_right α z0).le⟩
      (continuous_abs.comp fR.derivative.continuous_aeval).continuousOn
  -- Use the key lemma `exists_one_le_pow_mul_dist`: we are left to show that ...
  refine'
    @exists_one_le_pow_mul_dist ℤ ℕ ℝ _ _ _ (fun y => fR.eval y) α ζ |fR.derivative.eval xm| _ z0
      (fun y hy => _) fun z a hq => _
  -- 1: the denominators are positive -- essentially by definition;
  · exact fun a => one_le_pow_of_one_le ((le_add_iff_nonneg_left 1).mpr a.cast_nonneg) _
  -- 2: the polynomial `fR` is Lipschitz at `α` -- as its derivative continuous;
  · rw [mul_comm]
    rw [Real.closedBall_eq_Icc] at hy
    -- apply the Mean Value Theorem: the bound on the derivative comes from differentiability.
    refine'
      Convex.norm_image_sub_le_of_norm_deriv_le (fun _ _ => fR.differentiableAt)
        (fun y h => by rw [fR.deriv]; exact hM h) (convex_Icc _ _) hy (mem_Icc_iff_abs_le.mp _)
    exact @mem_closedBall_self ℝ _ α ζ (le_of_lt z0)
  -- 3: the weird inequality of Liouville type with powers of the denominators.
  · show 1 ≤ (a + 1 : ℝ) ^ f.natDegree * |eval α fR - eval ((z : ℝ) / (a + 1)) fR|
    rw [fa, zero_sub, abs_neg]
    rw [show (a + 1 : ℝ) = ((a + 1 : ℕ) : ℤ) by norm_cast] at hq ⊢
    -- key observation: the right-hand side of the inequality is an *integer*.  Therefore,
    -- if its absolute value is not at least one, then it vanishes.  Proceed by contradiction
    refine' one_le_pow_mul_abs_eval_div (Int.coe_nat_succ_pos a) fun hy => _
    -- As the evaluation of the polynomial vanishes, we found a root of `fR` that is rational.
    -- We know that `α` is the only root of `fR` in our interval, and `α` is irrational:
    -- follow your nose.
    refine' (irrational_iff_ne_rational α).mp ha z (a + 1) (mem_singleton_iff.mp _).symm
    refine' U.subset _
    refine' ⟨hq, Finset.mem_coe.mp (Multiset.mem_toFinset.mpr _)⟩
    exact (mem_roots fR0).mpr (IsRoot.def.mpr hy)
#align liouville.exists_pos_real_of_irrational_root Liouville.exists_pos_real_of_irrational_root

/-- **Liouville's Theorem** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b3b43100ade222c01088fbb6b0fd31e3fd7f646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
