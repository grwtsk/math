# ExactTopologySurgeryConclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46a9675ced76bd79dd031ca6c5ac7dc76e47151a2aa8926cc807d482d2a055e3",
  "kind": "structure",
  "lexical_name": "ExactTopologySurgeryConclusion",
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
  "slug": "exacttopologysurgeryconclusion--1042ff94bbca4896e3f69b12",
  "source": {
    "blob": "6e2eb9bbf53ae6652243e34ff4b9e552d3874ccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant2f3cf186280f65358d9b9299655678e7754c7e126bc56ba0ca23d19f793ee588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1042ff94bbca4896e3f69b12d0568a7f6ba6f93bd345f7b77271ac1e3c834d0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant2f3cf186280f65358d9b9299655678e7754c7e126bc56ba0ca23d19f793ee588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46a9675ced76bd79dd031ca6c5ac7dc76e47151a2aa8926cc807d482d2a055e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactTopologySurgeryConclusion
    {Carrier State Coefficient Patch : Type*}
    [Fintype Carrier] [DecidableEq Carrier]
    [Fintype Coefficient] [AddCommGroup Coefficient]
    (problem : ExactTopologySurgeryProblem Carrier State Coefficient Patch) where
  exteriorInvariance : Prop
  exteriorInvarianceProof : exteriorInvariance
  localClassVanishing : Prop
  localClassVanishingProof : localClassVanishing
  globalClassVanishing : Prop
  globalClassVanishingProof :
    problem.descentComparisonHypotheses → globalClassVanishing
  globalRegluing : Prop
  globalRegluingProof : globalRegluing
  authorityNonpromotion : problem.targetAuthority = problem.sourceAuthority
  dependencyLocality : Prop
  dependencyLocalityProof : dependencyLocality

/-- A domain supplies this capability; it is not manufactured generically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant2f3cf186280f65358d9b9299655678e7754c7e126bc56ba0ca23d19f793ee588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant2f3cf186280f65358d9b9299655678e7754c7e126bc56ba0ca23d19f793ee588.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e2eb9bbf53ae6652243e34ff4b9e552d3874ccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
