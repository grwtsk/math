# algebraicGeometryTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:606d9e132e8c002ec29ed48ca410f904c4ce16f19d6f712f0f2c702857f3e87a",
  "kind": "def",
  "lexical_name": "algebraicGeometryTargets",
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
  "slug": "algebraicgeometrytargets--455761858979bbb87a4f6a61",
  "source": {
    "blob": "ab8645f014820ae2c7ae62703a80a46a4626c7fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 717,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455761858979bbb87a4f6a616e13c1daa7f2d6775ce93ddee76a915c608f4b19",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:606d9e132e8c002ec29ed48ca410f904c4ce16f19d6f712f0f2c702857f3e87a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 717–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algebraicGeometryTargets : List OpenTargetRecord := [
  mk "ag.hodge" .algebraicGeometry "Hodge conjecture" .openStatus
    ["smooth projective complex varieties", "Hodge classes"]
    ["Hodge classes arise from algebraic cycles"]
    ["rational Hodge class"]
    ["algebraic cycle existence"]
    ["known special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "ag.tate" .algebraicGeometry "Tate conjecture" .openStatus
    ["varieties over finitely generated fields", "Galois representations"]
    ["cycle classes match fixed cohomology"]
    ["prime and variety hypotheses"]
    ["cycle/cohomology comparison"]
    ["known special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.standard_conjectures" .algebraicGeometry "Grothendieck standard conjectures" .openStatus
    ["algebraic cycles", "Weil cohomology"]
    ["positivity and Lefschetz-type algebraicity"]
    ["smooth projective variety"]
    ["cycle operator conclusions"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.resolution_positive_characteristic" .algebraicGeometry "Resolution in positive characteristic" .openStatus
    ["singular varieties", "positive characteristic"]
    ["resolution of singularities"]
    ["dimension and field hypotheses"]
    ["regular model existence"]
    ["known in low dimensions"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.jacobian" .algebraicGeometry "Jacobian conjecture" .openStatus
    ["polynomial maps", "affine space"]
    ["constant nonzero Jacobian determinant implies invertibility"]
    ["field characteristic zero", "polynomial map"]
    ["polynomial inverse conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "ag.cancellation" .algebraicGeometry "Affine cancellation problems" .openStatus
    ["affine varieties", "product with affine line"]
    ["cancellation of affine factors"]
    ["isomorphism after product"]
    ["base variety isomorphism conclusion"]
    ["some counterexamples and restricted positive results"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean#L717).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8645f014820ae2c7ae62703a80a46a4626c7fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
