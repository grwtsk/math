# primeWork_Mangoldt_work_uniform_replacement_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "500519b52a22d8540a5314963a4d95c2373e62b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a972f743-f8ec-7851-8bfb-7d76b2dfac81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea2001c5-84be-810f-bd0d-67148a9af095",
  "kind": "theorem",
  "lexical_name": "primeWork_Mangoldt_work_uniform_replacement_error",
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
  "slug": "primework-mangoldt-work-uniform-replacement-error--f039ae2711acb84b5f91c0ae",
  "source": {
    "blob": "500519b52a22d8540a5314963a4d95c2373e62b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 348,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f039ae2711acb84b5f91c0ae696b76c3595b4342f70a8f3be30de05a44f5fad2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea2001c5-84be-810f-bd0d-67148a9af095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeWork_Mangoldt_work_uniform_replacement_error :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      |(criticalSignedWork A - SourceDiagonalMainTerm.diagonalMainCoefficient A * A) -
        criticalMangoldtWork A| ≤ E := by
  obtain ⟨E, hE, herror⟩ :=
    SourcePrimePowerPartition.residual_firstPrime_uniform_replacement_error
  refine ⟨E, hE, ?_⟩
  intro A hA
  have h := herror A hA
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA,
    firstPrimeMoment_eq_continuous_sub_work A hA] at h
  convert h using 1
  congr 1
  ring

/-- The elementary prefix budget does not estimate its signed critical work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500519b52a22d8540a5314963a4d95c2373e62b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
