# primeWork_eq_Mangoldt_work_add_square_higher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c703ed5c-c697-f30d-303d-64d420c51ffd",
  "kind": "theorem",
  "lexical_name": "primeWork_eq_Mangoldt_work_add_square_higher",
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
  "slug": "primework-eq-mangoldt-work-add-square-higher--88a19f1ef63e132bd79e7d94",
  "source": {
    "blob": "edc8886d0722fd372baf94b044bea53e1c05f393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 277,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a19f1ef63e132bd79e7d94643173a942a7a489cfa48f32423b9efddb091647",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c703ed5c-c697-f30d-303d-64d420c51ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeWork_eq_Mangoldt_work_add_square_higher (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedWork A = criticalMangoldtWork A +
      SourcePrimeSquareMainTerm.primeSquareMoment A +
      SourcePrimePowerPartition.higherPrimePowerMoment A := by
  have h := SourcePrimePowerPartition.closedPrimeMoment_eq_first_square_higher A
  rw [closedPrimeMoment_eq_continuous_sub_Mangoldt_work A hA,
    firstPrimeMoment_eq_continuous_sub_work A hA] at h
  linarith

/-- Eventual full-Mangoldt lower control is equivalent to the unchanged residual upper target.
This theorem supplies neither eventual witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc8886d0722fd372baf94b044bea53e1c05f393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
