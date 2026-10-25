# normalizeXYZV1_establishes_colorInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bd7172aba9f25de8885380d4dc514cc208fdda9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7366ec8a-62f3-dd38-a9a2-e861ab15e66e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:986b9310-8246-2eae-34b8-8f60dd9d0dab",
  "kind": "theorem",
  "lexical_name": "normalizeXYZV1_establishes_colorInvariant",
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
  "slug": "normalizexyzv1-establishes-colorinvariant--c0fb383d2b7e46c562596b07",
  "source": {
    "blob": "3bd7172aba9f25de8885380d4dc514cc208fdda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 497,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0fb383d2b7e46c562596b07c9c81d73fb9fe267d018611366632dcc517e7a4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986b9310-8246-2eae-34b8-8f60dd9d0dab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizeXYZV1_establishes_colorInvariant
    (raw : RawXYZ) (xyz : FixedXYZ xyzFormatV1)
    (hnormalized : normalizeXYZV1 raw = some xyz) :
    normalizedTristimulusInvariant xyzFormatV1 xyz := by
  unfold normalizeXYZV1 at hnormalized
  cases hplan : normalizationPlanV1? raw with
  | none => simp [hplan] at hnormalized
  | some plan =>
      simp only [hplan] at hnormalized
      exact fixedXYZV1OfRaw?_invariant plan.allocate xyz hnormalized

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant4c6e93b7553d11ad70cb54e1cbb6128f424e6410de1b690a19a65fa4090e9921.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd7172aba9f25de8885380d4dc514cc208fdda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
