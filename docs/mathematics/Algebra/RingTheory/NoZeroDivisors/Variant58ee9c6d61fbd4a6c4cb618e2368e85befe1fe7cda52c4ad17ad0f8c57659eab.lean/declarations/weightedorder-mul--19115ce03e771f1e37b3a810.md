# weightedOrder_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09ca433c-bf09-68bd-fe22-b3303a7b926a",
  "kind": "theorem",
  "lexical_name": "weightedOrder_mul",
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
  "slug": "weightedorder-mul--19115ce03e771f1e37b3a810",
  "source": {
    "blob": "7d4a036d122fcaabd467b112f7345e46addaa6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 154,
    "path": "GRWTSK/Algebra/RingTheory/NoZeroDivisors/Variant58ee9c6d61fbd4a6c4cb618e2368e85befe1fe7cda52c4ad17ad0f8c57659eab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19115ce03e771f1e37b3a81000da8d84d85fcd482d5d26bdb30c7096df071bd9",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/NoZeroDivisors/Variant58ee9c6d61fbd4a6c4cb618e2368e85befe1fe7cda52c4ad17ad0f8c57659eab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09ca433c-bf09-68bd-fe22-b3303a7b926a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedOrder_mul (w : σ → ℕ) (f g : MvPowerSeries σ R) :
    (f * g).weightedOrder w = f.weightedOrder w + g.weightedOrder w := by
  apply le_antisymm _ (le_weightedOrder_mul w)
  by_cases hf : f.weightedOrder w < ⊤
  · by_cases hg : g.weightedOrder w < ⊤
    · let p := (f.weightedOrder w).toNat
      have hp : p = f.weightedOrder w := by
        simpa only [p, ENat.natCast_toNat_eq_self, ← lt_top_iff_ne_top]
      let q := (g.weightedOrder w).toNat
      have hq : q = g.weightedOrder w := by
        simpa only [q, ENat.natCast_toNat_eq_self, ← lt_top_iff_ne_top]
      have : f.weightedHomogeneousComponent w p * g.weightedHomogeneousComponent w q ≠ 0 := by
        simp only [ne_eq, mul_eq_zero]
        intro H
        rcases H with H | H <;>
        · refine weightedHomogeneousComponent_of_weightedOrder ?_ H
          simp only [ENat.natCast_toNat_eq_self, ne_eq, weightedOrder_eq_top_iff, p, q]
          rw [← ne_eq, ne_zero_iff_weightedOrder_finite w]
          exact ENat.natCast_toNat (ne_top_of_lt (by simpa))
      rw [← weightedHomogeneousComponent_mul_of_le_weightedOrder
          (le_of_eq hp) (le_of_eq hq)] at this
      rw [← hp, ← hq, ← Nat.cast_add, ← not_lt]
      intro H
      apply this
      apply weightedHomogeneousComponent_of_lt_weightedOrder_eq_zero H
    · rw [not_lt_top_iff] at hg
      simp [hg]
  · rw [not_lt_top_iff] at hf
    simp [hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/NoZeroDivisors/Variant58ee9c6d61fbd4a6c4cb618e2368e85befe1fe7cda52c4ad17ad0f8c57659eab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/NoZeroDivisors/Variant58ee9c6d61fbd4a6c4cb618e2368e85befe1fe7cda52c4ad17ad0f8c57659eab.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4a036d122fcaabd467b112f7345e46addaa6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
