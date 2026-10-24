# geometryTopologyTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1426103cc0c4ba379af302a7ab1ce15db1cd06733a298d2f6874bfee1e702c5f",
  "kind": "def",
  "lexical_name": "geometryTopologyTargets",
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
  "slug": "geometrytopologytargets--445e7d2f3b8970bc2aa4259f",
  "source": {
    "blob": "bb2faa226d61cc81814b4f0d3c3bc5f408105b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 658,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:445e7d2f3b8970bc2aa4259fa3e1e75b1835cceb1a08b0530d0e793e47514606",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1426103cc0c4ba379af302a7ab1ce15db1cd06733a298d2f6874bfee1e702c5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def geometryTopologyTargets : List OpenTargetRecord := [
  mk "gt.smooth_4d_poincare" .geometryTopology "Smooth 4D Poincare conjecture" .openStatus
    ["smooth four-manifolds", "homotopy four-sphere"]
    ["smooth four-sphere characterization"]
    ["smooth closed simply connected hypotheses"]
    ["diffeomorphism conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.surgery_theory" .geometryTopology "Surgery-theory residues" .openStatus
    ["manifolds", "surgery obstruction groups"]
    ["classification and obstruction vanishing targets"]
    ["dimension and category hypotheses"]
    ["classification conclusion"]
    ["many high-dimensional results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.triangulation" .geometryTopology "Triangulation variants" .partialStatus
    ["topological manifolds", "simplicial complexes"]
    ["triangulability and uniqueness variants"]
    ["dimension/category hypotheses"]
    ["triangulation conclusion"]
    ["some variants solved or refuted"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [],
  mk "gt.novikov" .geometryTopology "Novikov conjecture" .openStatus
    ["higher signatures", "fundamental groups"]
    ["homotopy invariance of higher signatures"]
    ["closed oriented manifold", "group cohomology class"]
    ["invariance conclusion"]
    ["many group classes known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.baum_connes" .geometryTopology "Baum-Connes conjecture" .openStatus
    ["C*-algebras", "K-theory", "groups"]
    ["assembly map isomorphism"]
    ["locally compact group hypotheses"]
    ["K-theoretic isomorphism"]
    ["many known cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.farrell_jones" .geometryTopology "Farrell-Jones conjecture" .openStatus
    ["group rings", "K-theory", "L-theory"]
    ["assembly map behavior"]
    ["group family hypotheses"]
    ["isomorphism conclusion"]
    ["many known cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.cannon" .geometryTopology "Cannon conjecture" .openStatus
    ["hyperbolic groups", "sphere boundary"]
    ["group acts geometrically on hyperbolic three-space"]
    ["Gromov hyperbolic group with S2 boundary"]
    ["Kleinian/geometric action conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "gt.hopf_curvature" .geometryTopology "Hopf curvature conjecture" .openStatus
    ["Riemannian manifolds", "sectional curvature", "Euler characteristic"]
    ["curvature/topology constraints"]
    ["even-dimensional compact manifold"]
    ["Euler-characteristic sign conclusion"]
    ["known in special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2faa226d61cc81814b4f0d3c3bc5f408105b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
