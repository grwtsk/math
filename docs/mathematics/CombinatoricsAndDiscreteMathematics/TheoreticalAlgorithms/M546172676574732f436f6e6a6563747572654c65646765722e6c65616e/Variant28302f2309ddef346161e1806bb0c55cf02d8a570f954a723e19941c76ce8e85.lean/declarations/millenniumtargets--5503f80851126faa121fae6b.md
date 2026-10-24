# millenniumTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47e23b3a8e76bd8aaa5a4b65fe42c277ea06dc1cda0b33715e6349095c2082db",
  "kind": "def",
  "lexical_name": "millenniumTargets",
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
  "slug": "millenniumtargets--5503f80851126faa121fae6b",
  "source": {
    "blob": "bb2faa226d61cc81814b4f0d3c3bc5f408105b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5503f80851126faa121fae6b8b25e78ed1acd5c2805f102475d77f97c8111728",
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

Occurrence: `declaration:47e23b3a8e76bd8aaa5a4b65fe42c277ea06dc1cda0b33715e6349095c2082db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def millenniumTargets : List OpenTargetRecord := [
  mk "millennium.rh" .millennium "Riemann Hypothesis" .openStatus
    ["Riemann zeta function", "nontrivial zeros"]
    ["all nontrivial zeros have real part one half"]
    ["analytic zeta object", "zero predicate", "critical line predicate"]
    ["universal critical-line conclusion"]
    ["prime number theorem as average distribution background"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.bsd" .millennium "Birch and Swinnerton-Dyer Conjecture" .openStatus
    ["elliptic curve", "L-function", "Mordell-Weil group"]
    ["rank equals order of vanishing"]
    ["elliptic curve over a number field", "analytic continuation of L-function"]
    ["rank/order equality"]
    ["experimental evidence", "known cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.hodge" .millennium "Hodge Conjecture" .openStatus
    ["smooth projective complex variety", "Hodge classes", "algebraic cycles"]
    ["Hodge classes are algebraic"]
    ["cycle class map", "rational cohomology"]
    ["algebraicity of selected cohomology classes"]
    ["known in special dimensions and cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.navier_stokes" .millennium "Navier-Stokes existence and smoothness" .openStatus
    ["incompressible Navier-Stokes equation", "initial data", "fluid velocity"]
    ["global smooth solution or finite-time breakdown alternative"]
    ["weak solution", "energy inequality", "regularity predicate"]
    ["existence/smoothness conclusion"]
    ["weak solution theory"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.p_vs_np" .millennium "P versus NP" .openStatus
    ["languages", "verifiers", "polynomial-time algorithms"]
    ["P equals NP or P differs from NP"]
    ["formal model of computation", "polynomial bound"]
    ["class equality or separation"]
    ["many conditional and relativized results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.yang_mills" .millennium "Yang-Mills existence and mass gap" .openStatus
    ["quantum Yang-Mills theory", "compact gauge group", "mass spectrum"]
    ["constructive existence and positive mass gap"]
    ["axioms for QFT", "gauge field formalization"]
    ["existence plus mass gap positivity"]
    ["physical and numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "millennium.poincare" .millennium "Poincare Conjecture" .solvedReference
    ["closed simply connected three-manifold"]
    ["three-sphere characterization"]
    ["topological manifold hypotheses"]
    ["reference-only solved control target"]
    ["Perelman proof via geometrization"]
    ["solved reference is not imported Lean proof"]
    .solvedReferenceOnly
    "verified Lean formalization or explicit external import policy for the solved theorem"
    [sourceClayMillennium]
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2faa226d61cc81814b4f0d3c3bc5f408105b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
