# toposDescentTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ab3a46ca24d71f5603387d9ba56cf71f6289021dad616a946e6e93eca64402a",
  "kind": "def",
  "lexical_name": "toposDescentTree",
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
  "slug": "toposdescenttree--95204802c6f0858460ee2abb",
  "source": {
    "blob": "9bdbff4325a950485558cf4a768cb0a046edeb90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 289,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFunctionalRhBoundary/Variant601b008e216a82c12be2df9b4f4884875b8d8b8ffaa04cca7f7121b9554b3dda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95204802c6f0858460ee2abb29781724a22af40d83325478a98af127ce2e33a0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFunctionalRhBoundary/Variant601b008e216a82c12be2df9b4f4884875b8d8b8ffaa04cca7f7121b9554b3dda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ab3a46ca24d71f5603387d9ba56cf71f6289021dad616a946e6e93eca64402a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toposDescentTree : EmlTree :=
  mkEmlTree EmlTreeId.toposDescent [
    .eml_define_eml_boundary_site,
    .eml_define_eml_boundary_topology_or_residue,
    .eml_define_eml_boundary_presheaf,
    .eml_define_restriction_maps,
    .eml_validate_naturality_for_each_branch,
    .eml_validate_matching_family,
    .eml_validate_unique_amalgamation,
    .eml_define_boundary_global_section,
    .eml_define_boundary_residue_section
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFunctionalRhBoundary/Variant601b008e216a82c12be2df9b4f4884875b8d8b8ffaa04cca7f7121b9554b3dda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/EmlFunctionalRhBoundary/Variant601b008e216a82c12be2df9b4f4884875b8d8b8ffaa04cca7f7121b9554b3dda.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdbff4325a950485558cf4a768cb0a046edeb90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
