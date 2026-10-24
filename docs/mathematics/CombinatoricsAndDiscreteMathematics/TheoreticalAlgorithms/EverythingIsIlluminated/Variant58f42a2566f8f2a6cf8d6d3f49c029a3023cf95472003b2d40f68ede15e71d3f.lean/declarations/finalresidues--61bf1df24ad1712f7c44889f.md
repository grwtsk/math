# finalResidues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:499d9909119f2a032ede29f8b90dd587d0810fdebd7aaaf40b19c1e5cd3607d1",
  "kind": "def",
  "lexical_name": "finalResidues",
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
  "slug": "finalresidues--61bf1df24ad1712f7c44889f",
  "source": {
    "blob": "e55f22291df2a915ffec8f2cfaf38c2646fb7eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61bf1df24ad1712f7c44889f581913f5da30469b86c86b2052d318cd7fef57f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:499d9909119f2a032ede29f8b90dd587d0810fdebd7aaaf40b19c1e5cd3607d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalResidues (_ctx : Context) : List Think.Residue :=
  [ atomResidue Atom.translationSurfaceObject
  , atomResidue Atom.torusCoverPredicate
  , atomResidue Atom.blockingPropertyPredicate
  , atomResidue Atom.boundedBlockingPredicate
  , atomResidue Atom.openPairSetPredicate
  , atomResidue Atom.finiteBlockingOnOpenSetPredicate
  , atomResidue Atom.torusCoverToBlocking
  , atomResidue Atom.blockingToOpenSet
  , atomResidue Atom.openSetToBoundedBlocking
  , atomResidue Atom.boundedBlockingToTorusCover
  , atomResidue Atom.theoremOneEquivalence
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EverythingIsIlluminated/Variant58f42a2566f8f2a6cf8d6d3f49c029a3023cf95472003b2d40f68ede15e71d3f.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e55f22291df2a915ffec8f2cfaf38c2646fb7eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
