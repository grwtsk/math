# Perfect.pseudoperfect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21733b171675c515ae4a0e09fe2130639458c809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05da20ad-7d59-c7e7-a5db-0d829f208bf0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8055a79-5562-b316-b2f0-2b2bcf4f4339",
  "kind": "theorem",
  "lexical_name": "Perfect.pseudoperfect",
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
  "slug": "perfect-pseudoperfect--9b6329bd1f9bd4dd1f557000",
  "source": {
    "blob": "21733b171675c515ae4a0e09fe2130639458c809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 114,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b6329bd1f9bd4dd1f55700052098124156f1b68db888f03a43f6089c0adb632",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8055a79-5562-b316-b2f0-2b2bcf4f4339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Perfect.pseudoperfect (h : Perfect n) : Pseudoperfect n :=
  ⟨h.2, ⟨properDivisors n, ⟨fun ⦃_⦄ a ↦ a, h.1⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4dbd24edd672d4741214319cfaa09ccc43bd05c891cfd185f0a3c7d61fd6ccd7.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21733b171675c515ae4a0e09fe2130639458c809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
