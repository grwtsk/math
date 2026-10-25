# smul_iInter_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eef292e9-2301-c6a9-a3b8-4c52574c414f",
  "kind": "theorem",
  "lexical_name": "smul_iInter_subset",
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
  "slug": "smul-iinter-subset--70f1b6eee345f8aebd11e8cf",
  "source": {
    "blob": "be5a6b2608f02acf560391daeed01ab866df6b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 280,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70f1b6eee345f8aebd11e8cfea7c13c67488d8acc6f300dcebcf46076d729ad0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef292e9-2301-c6a9-a3b8-4c52574c414f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_iInter_subset (s : Set α) (t : ι → Set β) : (s • ⋂ i, t i) ⊆ ⋂ i, s • t i :=
  image2_iInter_subset_right _ _ _
#align set.smul_Inter_subset Set.smul_iInter_subset
#align set.vadd_Inter_subset Set.vadd_iInter_subset

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant5cbcfb3c8cd600e720e4e053be08a4424c1bf624bcfa6254b27046eb4e3c7314.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be5a6b2608f02acf560391daeed01ab866df6b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
