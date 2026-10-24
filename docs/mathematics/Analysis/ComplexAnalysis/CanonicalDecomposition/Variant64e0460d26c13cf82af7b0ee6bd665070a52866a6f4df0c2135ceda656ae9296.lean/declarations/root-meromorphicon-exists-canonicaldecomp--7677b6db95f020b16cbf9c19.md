# _root_.MeromorphicOn.exists_canonicalDecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9c8f0b7-9838-1c21-1a1d-e7f1badd6731",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e072c648-30c7-b989-cc8c-107b57717a21",
  "kind": "theorem",
  "lexical_name": "_root_.MeromorphicOn.exists_canonicalDecomp",
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
  "slug": "root-meromorphicon-exists-canonicaldecomp--7677b6db95f020b16cbf9c19",
  "source": {
    "blob": "b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 314,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7677b6db95f020b16cbf9c19fd03f91d27ad96970313a23e4dd9880fb2661a8c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e072c648-30c7-b989-cc8c-107b57717a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeromorphicOn.exists_canonicalDecomp
    (h₁f : MeromorphicOn f (closedBall 0 R))
    (h₂f : ∀ u : (closedBall (0 : ℂ) R), meromorphicOrderAt f u ≠ ⊤) :
    ∃ g : ℂ → E, CanonicalDecomp f g R := by
  -- Trivial case: If `R` is non-positive, then the ball is empty.
  by_cases hR : R ≤ 0
  · use fun _ ↦ f 0
    exact {
      meromorphicOn := h₁f
      meromorphicNFOn := fun z hz ↦ AnalyticAt.meromorphicNFAt analyticAt_const
      ne_zero := by simp [ball_eq_empty.2 hR]
      eventuallyEq := by
        filter_upwards [self_mem_codiscreteWithin (closedBall 0 R)] with a ha
        have : R = 0 := by grind [nonneg_of_mem_closedBall ha]
        aesop
    }
  rw [not_le] at hR
  -- General case: The requirement that `f =ᶠ[…] (something) • g` implies that `g` must equal
  -- `(something)⁻¹ • g`, converted to a meromorphic function in normal form. The next lines define
  -- `g` in this way and establish basic properties.
  let φ := (∏ᶠ c, canonicalFactor R c ^ (divisor f (ball 0 R)) c) • f
  have hφ : MeromorphicOn φ (closedBall 0 R) := by fun_prop
  let g := toMeromorphicNFOn φ (closedBall 0 R)
  have h₃g : divisor g (ball 0 R) = 0 := by
    rw [divisor_congr_codiscreteWithin
        ((toMeromorphicNFOn_eqOn_codiscrete hφ).symm.filter_mono
        (codiscreteWithin_mono ball_subset_closedBall)) isOpen_ball,
      divisor_smul _ (fun x hx ↦ h₁f x (ball_subset_closedBall hx))
        (fun z _ ↦ canonicalDecomposition_aux₃ hR)
        (fun z hz ↦ h₂f ⟨z, ball_subset_closedBall hz⟩),
      canonicalDecomposition_aux₂ h₁f, neg_add_cancel]
    apply (canonicalDecomposition_aux₁ _).meromorphicOn
  have h₂g : MeromorphicNFOn g (closedBall 0 R) :=
    meromorphicNFOn_toMeromorphicNFOn φ (closedBall 0 R)
  have h₄g {z : ℂ} (hz : z ∈ closedBall 0 R) : meromorphicOrderAt g z ≠ ⊤ := by
    rw [meromorphicOrderAt_toMeromorphicNFOn hφ hz, meromorphicOrderAt_smul _ (h₁f z hz)]
    · simpa [h₂f ⟨z, hz⟩] using canonicalDecomposition_aux₃ hR
    · apply MeromorphicAt.finprod (fun x ↦ (meromorphic_canonicalFactor R x z).zpow _)
  -- Use the function `g` defined above and establish the required properties
  use g
  have η₀ : (-divisor f (ball 0 R)).support.Finite := by simp [h₁f.divisor_ball_support_finite]
  exact {
    meromorphicOn := h₁f
    meromorphicNFOn := meromorphicNFOn_toMeromorphicNFOn φ (closedBall 0 R)
    ne_zero := by
      intro z hz
      rw [← MeromorphicNFAt.meromorphicOrderAt_eq_zero_iff (h₂g (ball_subset_closedBall hz))]
      have : divisor g (ball 0 R) z = 0 := by simp [h₃g]
      rw [divisor_apply (fun x hx ↦ (h₂g (ball_subset_closedBall hx)).meromorphicAt) hz] at this
      simpa [h₄g (ball_subset_closedBall hz)] using this
    eventuallyEq := by
      trans (∏ i ∈ η₀.toFinset, canonicalFactor R i ^ (-(divisor f (ball 0 R)) i)) • φ
      · unfold φ
        rw [finprod_eq_prod_of_mulSupport_subset_of_finite _ (by aesop) η₀]
        · filter_upwards [codiscreteWithin_mono (by tauto) η₀.compl_mem_codiscrete,
            self_mem_codiscreteWithin (closedBall 0 R)] with a ha h₂a
          simp only [Pi.smul_apply', Finset.prod_apply, Pi.pow_apply]
          rw [← smul_assoc, ← Finset.prod_smul, Finset.prod_eq_one, one_smul]
          intro x hx
          rw [smul_eq_mul, ← zpow_add', neg_add_cancel, zpow_zero]
          simp_all only [ne_eq, Subtype.forall, mem_closedBall, dist_zero_right,
            locallyFinsuppWithin.support_neg, mem_compl_iff, mem_support, Decidable.not_not,
            Finite.mem_toFinset, neg_add_cancel, not_true_eq_false, neg_eq_zero, and_self, or_self,
            or_false]
          apply canonicalFactor_ne_zero _ (by simp_all) (by grind)
          by_contra h
          simp_all
      · rw [finprod_eq_prod_of_mulSupport_subset_of_finite _ (by aesop) η₀]
        filter_upwards [toMeromorphicNFOn_eqOn_codiscrete hφ] using by simp_all [g]
  }

/--
Given a canonical decomposition `CanonicalDecomp f g R`, the function associated with the divisor of
`g` equals the function associated with the divisor of `f`, seen as a meromorphic function on the
sphere.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant64e0460d26c13cf82af7b0ee6bd665070a52866a6f4df0c2135ceda656ae9296.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ab2fea04a8bb2dcf745fe339cbb9154bc39a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
