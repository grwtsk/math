# transcendental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60d4cf9f-3f62-1746-eca8-d067af7aca69",
  "kind": "theorem",
  "lexical_name": "transcendental",
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
  "slug": "transcendental--9ff048f526cfad4f3349e2e4",
  "source": {
    "blob": "1bd99569ade2624419a996ddd1f7add9c7494605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 182,
    "path": "GRWTSK/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ff048f526cfad4f3349e2e41c44d8cede199612026095b1877231f5a92e20a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60d4cf9f-3f62-1746-eca8-d067af7aca69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem transcendental {x : ℝ} (lx : Liouville x) : Transcendental ℤ x := by
  -- Proceed by contradiction: if `x` is algebraic, then `x` is the root (`ef0`) of a
  -- non-zero (`f0`) polynomial `f`
  rintro ⟨f : ℤ[X], f0, ef0⟩
  -- Change `aeval x f = 0` to `eval (map _ f) = 0`, who knew.
  replace ef0 : (f.map (algebraMap ℤ ℝ)).eval x = 0 := by
    rwa [aeval_def, ← eval_map] at ef0
  -- There is a "large" real number `A` such that `(b + 1) ^ (deg f) * |f (x - a / (b + 1))| * A`
  -- is at least one.  This is obtained from lemma `exists_pos_real_of_irrational_root`.
  obtain ⟨A, hA, h⟩ : ∃ A : ℝ, 0 < A ∧ ∀ (a : ℤ) (b : ℕ),
      (1 : ℝ) ≤ ((b : ℝ) + 1) ^ f.natDegree * (|x - a / (b + 1)| * A) :=
    exists_pos_real_of_irrational_root lx.irrational f0 ef0
  -- Since the real numbers are Archimedean, a power of `2` exceeds `A`: `hn : A < 2 ^ r`.
  rcases pow_unbounded_of_one_lt A (lt_add_one 1) with ⟨r, hn⟩
  -- Use the Liouville property, with exponent `r + deg f`.
  obtain ⟨a, b, b1, -, a1⟩ : ∃ a b : ℤ, 1 < b ∧ x ≠ a / b ∧
      |x - a / b| < 1 / (b : ℝ) ^ (r + f.natDegree) :=
    lx (r + f.natDegree)
  have b0 : (0 : ℝ) < b := zero_lt_one.trans (by rw [← Int.cast_one]; exact Int.cast_lt.mpr b1)
  -- Prove that `b ^ f.nat_degree * abs (x - a / b)` is strictly smaller than itself
  -- recall, this is a proof by contradiction!
  refine lt_irrefl ((b : ℝ) ^ f.natDegree * |x - ↑a / ↑b|) ?_
  -- clear denominators at `a1`
  rw [lt_div_iff₀' (pow_pos b0 _), pow_add, mul_assoc] at a1
  -- split the inequality via `1 / A`.
  refine (?_ : (b : ℝ) ^ f.natDegree * |x - a / b| < 1 / A).trans_le ?_
  -- This branch of the proof uses the Liouville condition and the Archimedean property
  · refine (lt_div_iff₀' hA).mpr ?_
    refine lt_of_le_of_lt ?_ a1
    gcongr
    refine hn.le.trans ?_
    rw [one_add_one_eq_two]
    gcongr
    norm_cast
  -- this branch of the proof exploits the "integrality" of evaluations of polynomials
  -- at ratios of integers.
  · lift b to ℕ using zero_le_one.trans b1.le
    specialize h a b.pred
    rwa [← Nat.cast_succ, Nat.succ_pred_eq_of_pos (zero_lt_one.trans _), ← mul_assoc, ←
      div_le_iff₀ hA] at h
    exact Int.ofNat_lt.mp b1

end Liouville
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant7b5c7f358e1f67c0976add68850bde6f8358be443c7663dd6cda9f7c9bc2d53e.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd99569ade2624419a996ddd1f7add9c7494605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
