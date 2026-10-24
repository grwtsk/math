# arithmeticResidual_eq_below_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df55f1a2-e514-25db-1ea2-36a9779eb4da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a7a2ef9-3abf-fc7b-1fc7-948c0e8090c9",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_eq_below_one",
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
  "slug": "arithmeticresidual-eq-below-one--31404ab01605dad55658b3a4",
  "source": {
    "blob": "3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 24,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31404ab01605dad55658b3a48e1e4d73e98c4e4ca5eba4665b77ae21cdd9dfdc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a7a2ef9-3abf-fc7b-1fc7-948c0e8090c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_eq_below_one (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (x : ℝ) (hx : 0 ≤ x) (hx1 : x < 1) :
    arithmeticResidual X ε x = (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) := by
  unfold arithmeticResidual
  rw [if_neg (not_le.mpr hx1), zero_add, ← dampedCoefficient_reciprocal_sum X ε hX,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  have hd0 : (0 : ℝ) < d := lt_of_lt_of_le zero_lt_one hd1
  rw [Int.fract_eq_self.mpr ⟨div_nonneg hx hd0.le, (div_lt_one hd0).mpr (hx1.trans_le hd1)⟩]
  push_cast
  ring

/-- The actual arithmetic residual retains a finite global absolute coefficient budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailAudit/Variant3d444f9133cdb66177526aff30d01e9ebeeac89bd8db706b53641b21c3218315.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c93962cb4f4380d87c3f6e550ba5bfdb4946bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
