# iSup_filtration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "307b1bf0c022c9bcab76476ab7dba82ada765f36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1975328a-a0a1-3bdb-e30d-1741aafbaa8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a953edae-7cea-74b6-4482-374f9a7a0044",
  "kind": "theorem",
  "lexical_name": "iSup_filtration",
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
  "slug": "isup-filtration--5e53f0c656cae55b5b1dd0c4",
  "source": {
    "blob": "307b1bf0c022c9bcab76476ab7dba82ada765f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e53f0c656cae55b5b1dd0c47d6bf0c8f40098ec0ea9fbd941c40ccb54eb41df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a953edae-7cea-74b6-4482-374f9a7a0044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_filtration : ⨆ j : Iio i, filtration j = filtration i := by
  cases i
  · rw [← range_coe, iSup_range']; exact iSup_adjoin_eq_top
  refine (iSup_le fun j ↦ filtration.monotone (mem_Iio.1 j.2).le).antisymm (adjoin_le_iff.2 ?_)
  rintro _ ⟨j, hj, rfl⟩
  refine le_iSup (α := IntermediateField F E) _ ⟨j⁺, ?_⟩ (subset_adjoin F _ ?_)
  exacts [⟨j, lt_succ j, rfl⟩, hi.succ_lt (coe_lt_coe.mpr hj)]

open WithTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307b1bf0c022c9bcab76476ab7dba82ada765f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
