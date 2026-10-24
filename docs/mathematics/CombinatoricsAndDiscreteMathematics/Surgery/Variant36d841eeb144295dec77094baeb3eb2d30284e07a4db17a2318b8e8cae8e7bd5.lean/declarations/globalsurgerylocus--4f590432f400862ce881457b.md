# GlobalSurgeryLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f1152423d5ef0495512b3655c7e30b425290d3160dbf721049c6be1ad14556c",
  "kind": "structure",
  "lexical_name": "GlobalSurgeryLocus",
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
  "slug": "globalsurgerylocus--4f590432f400862ce881457b",
  "source": {
    "blob": "7c08cb2f7c4c0e018da4ca80b1b4c48b61a2f320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f590432f400862ce881457b0edbda91eedfdcfa0a7a4e16b6f43c6163a33b43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f1152423d5ef0495512b3655c7e30b425290d3160dbf721049c6be1ad14556c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalSurgeryLocus
    {State : Type u} (G : KnownMaximalState State) where
  region : AbsoluteRegion G
  globalIdentifier : String

/-- Generic governance-neutral data shared by layer-specific surgery adapters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c08cb2f7c4c0e018da4ca80b1b4c48b61a2f320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
