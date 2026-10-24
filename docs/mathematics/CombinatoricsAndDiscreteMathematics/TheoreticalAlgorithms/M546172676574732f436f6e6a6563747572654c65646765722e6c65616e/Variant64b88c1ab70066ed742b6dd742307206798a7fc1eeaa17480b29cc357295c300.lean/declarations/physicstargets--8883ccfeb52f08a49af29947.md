# physicsTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1117903f55e6af0e20eeeeffdb1a74af0040015efe389ff3e1173d446116f1b0",
  "kind": "def",
  "lexical_name": "physicsTargets",
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
  "slug": "physicstargets--8883ccfeb52f08a49af29947",
  "source": {
    "blob": "ab8645f014820ae2c7ae62703a80a46a4626c7fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 851,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8883ccfeb52f08a49af29947631caa919721614d9f172823686b71dde6b103f1",
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

Occurrence: `declaration:1117903f55e6af0e20eeeeffdb1a74af0040015efe389ff3e1173d446116f1b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def physicsTargets : List OpenTargetRecord := [
  mk "physics.yang_mills_mass_gap" .physics "Yang-Mills mass gap" .openStatus
    ["gauge theory", "quantum fields"]
    ["existence and positive mass gap"]
    ["compact gauge group", "axiomatic QFT setup"]
    ["mass gap conclusion"]
    ["physical and numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "physics.constructive_qft" .physics "Constructive quantum field theory" .openStatus
    ["interacting fields", "Euclidean measures"]
    ["construct rigorous interacting models"]
    ["dimension and interaction hypotheses"]
    ["formal-law satisfaction"]
    ["known low-dimensional constructions"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "physics.statistical_mechanics_foundations" .physics "Statistical mechanics foundations" .openStatus
    ["many-particle systems", "thermodynamic limit"]
    ["derive macroscopic laws from microscopic dynamics"]
    ["scaling and limit hypotheses"]
    ["limit law conclusion"]
    ["many model-specific theorems"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "physics.turbulence" .physics "Turbulence" .openStatus
    ["fluid equations", "energy cascade"]
    ["inertial-range and dissipation laws"]
    ["Reynolds/scaling regime"]
    ["statistical law conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "physics.quantum_pcp" .physics "Quantum PCP conjecture" .openStatus
    ["local Hamiltonians", "quantum proofs"]
    ["constant-factor approximation remains hard"]
    ["Hamiltonian locality and promise gap"]
    ["hardness conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8645f014820ae2c7ae62703a80a46a4626c7fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
