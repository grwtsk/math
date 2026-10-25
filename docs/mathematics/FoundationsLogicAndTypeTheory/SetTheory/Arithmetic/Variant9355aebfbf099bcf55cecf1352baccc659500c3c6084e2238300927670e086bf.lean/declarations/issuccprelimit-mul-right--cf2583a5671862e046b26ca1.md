# isSuccPrelimit_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3856b5bfc272ee5500cc0784bfd391ad8321bf08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9355aebfbf099bcf55cecf1352baccc659500c3c6084e2238300927670e086bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12334966-eb0b-4168-78b8-4dcdd19a0b8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2cdbf49-e1c9-7907-9d2c-7b7fb1fd746e",
  "kind": "theorem",
  "lexical_name": "isSuccPrelimit_mul_right",
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
  "slug": "issuccprelimit-mul-right--cf2583a5671862e046b26ca1",
  "source": {
    "blob": "3856b5bfc272ee5500cc0784bfd391ad8321bf08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant9355aebfbf099bcf55cecf1352baccc659500c3c6084e2238300927670e086bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf2583a5671862e046b26ca1f73da212e6385384ae5a07555a885d8ba6523199",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant9355aebfbf099bcf55cecf1352baccc659500c3c6084e2238300927670e086bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2cdbf49-e1c9-7907-9d2c-7b7fb1fd746e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSuccPrelimit_mul_right {a b : Ordinal} (hb : IsSuccLimit b) : IsSuccPrelimit (a * b) := by
  obtain rfl | ha := eq_zero_or_pos a
  · rw [zero_mul]
    exact isSuccPrelimit_zero
  · exact (isSuccLimit_mul_right ha hb).isSuccPrelimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant9355aebfbf099bcf55cecf1352baccc659500c3c6084e2238300927670e086bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant9355aebfbf099bcf55cecf1352baccc659500c3c6084e2238300927670e086bf.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3856b5bfc272ee5500cc0784bfd391ad8321bf08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
