# StructureGroupoid.LocalInvariantProp.sheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e4c12a319def3eda2f6e6956852e1fcc40aeebdc90290cf42ad04e9041c99b5",
  "kind": "def",
  "lexical_name": "StructureGroupoid.LocalInvariantProp.sheaf",
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
  "slug": "structuregroupoid-localinvariantprop-sheaf--fbe7e1b2ffe2754d72dcfc9d",
  "source": {
    "blob": "da1d0a56bc020c8f340fce7f7038253f155eae20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbe7e1b2ffe2754d72dcfc9ddae198510001cfcb6a1251eded20fd83324b7d96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e4c12a319def3eda2f6e6956852e1fcc40aeebdc90290cf42ad04e9041c99b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StructureGroupoid.LocalInvariantProp.sheaf (hG : LocalInvariantProp G G' P) :
    TopCat.Sheaf (Type u) (TopCat.of M) :=
  TopCat.subsheafToTypes (hG.localPredicate M M')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da1d0a56bc020c8f340fce7f7038253f155eae20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
