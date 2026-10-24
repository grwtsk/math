# torsionPhiResidues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acf3b864b8e1002d61e79f92a8e82809ff6520fdae69f2f9ce4c474b958cb34f",
  "kind": "def",
  "lexical_name": "torsionPhiResidues",
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
  "slug": "torsionphiresidues--63c837f5c926ba841d429a14",
  "source": {
    "blob": "aa4dc764c33b6f193622fdb2c5062eb6ee30b3b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63c837f5c926ba841d429a1412e7e934b31434ff6e270c02cb9e0af588848434",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acf3b864b8e1002d61e79f92a8e82809ff6520fdae69f2f9ce4c474b958cb34f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def torsionPhiResidues (tau : TorsionClass) :
    List TorsionScatteringResidue :=
  if tau.admissible then
    if tau.declaredPolarity = EmlResiduePolarity.none then
      [TorsionScatteringResidue.zero_polarity_refusal_residue]
    else
      []
  else
    [ TorsionScatteringResidue.non_admissible_torsion_data
    , TorsionScatteringResidue.torsion_not_forced_into_ring_algebra
    ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variantace53ebf93597fe3568676e7cec7f7321058c14892fe8937816844afeaf60f73.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa4dc764c33b6f193622fdb2c5062eb6ee30b3b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
