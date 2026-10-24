# FiniteSelmerMathlibAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e372375f82ca4233fb6e561591b3a251f1aa11fd30948bb67a30e059af760268",
  "kind": "structure",
  "lexical_name": "FiniteSelmerMathlibAdapter",
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
  "slug": "finiteselmermathlibadapter--8703715f8f952ce0fccde0f6",
  "source": {
    "blob": "697690e49a89b884f24895e03bbaf5cb13ed39b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8703715f8f952ce0fccde0f685e5bffb6b0bc8e2c5c785995e6e551ebee670ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e372375f82ca4233fb6e561591b3a251f1aa11fd30948bb67a30e059af760268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteSelmerMathlibAdapter
    (P : FiniteSelmerProblem.{u, v, w}) where
  backend : MathlibCohomologyAdapterBackend
  globalH1Adapter :
    FiniteH1MathlibAdapter P.G P.A P.ρG
  localH1Adapter :
    ∀ place : P.V,
      FiniteH1MathlibAdapter (P.Gv place) P.A (P.ρv place)
  restrictionMapsTransferred : Prop
  restrictionMapsTransferredCertified :
    restrictionMapsTransferred
  localConditionsTransferred : Prop
  localConditionsTransferredCertified :
    localConditionsTransferred
  selmerSubgroupTransferred : Prop
  selmerSubgroupTransferredCertified :
    selmerSubgroupTransferred
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variantf3beaac3a0d304ce020bce51d54dad80d6c965d30b930a94077f5a5099e4514c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `697690e49a89b884f24895e03bbaf5cb13ed39b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
