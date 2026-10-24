# dafTotalOperator_positiveSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06bdc27b-e5c0-2e13-26f9-063a8dca3752",
  "kind": "theorem",
  "lexical_name": "dafTotalOperator_positiveSquare",
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
  "slug": "daftotaloperator-positivesquare--f89cee3dd2a2e2ad92cf6552",
  "source": {
    "blob": "c10912dc6d1ad867f6094ac91914a0a7ab587ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f89cee3dd2a2e2ad92cf6552e84592c59d2535e062ff6456294851e314f3d580",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06bdc27b-e5c0-2e13-26f9-063a8dca3752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dafTotalOperator_positiveSquare
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex)
    (spindleHermitian : spindle.IsHermitian) :
    terrain.PositiveSquare spindle := by
  intro vector
  let total := terrain.DAFTotalOperator spindle
  have totalHermitian : total.IsHermitian :=
    terrain.dafTotalOperator_selfAdjoint spindle spindleHermitian
  have totalSymmetric : total.toLinearMap.IsSymmetric :=
    FiniteOperator.isSymmetric_toLinearMap_iff total |>.mpr totalHermitian
  change 0 ≤ (inner ℂ
    (total.toLinearMap (total.toLinearMap vector)) vector).re
  rw [totalSymmetric (total.toLinearMap vector) vector]
  exact inner_self_nonneg (𝕜 := ℂ) (x := total.toLinearMap vector)

end GradedTerrainComplex

end DAF.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HodgeDirac/Variantd82b82766b21df12e359b5c1d5ff62cf29e1bb6dec4f40ade5291ce1c9b3ddb7.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c10912dc6d1ad867f6094ac91914a0a7ab587ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
