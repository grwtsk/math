# Atom.claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73a4763532f91c65d6431726a4b6127cc7eac6624f6ed7424b8cb06b77eebb18",
  "kind": "def",
  "lexical_name": "Atom.claim",
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
  "slug": "atom-claim--fa3620bf936cdc897a051954",
  "source": {
    "blob": "4b04b1952ed9b49bf1d8e5bfda4c1b527c91cd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa3620bf936cdc897a0519544bafba710f361cec2a79a58ee7f559d0e70a02fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73a4763532f91c65d6431726a4b6127cc7eac6624f6ed7424b8cb06b77eebb18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.claim (ctx : Context) : Atom -> Prop
  | .finiteStageWitness => ∀ n : Nat, ctx.HasFiniteWitness n
  | .finiteStageProperty => ∀ n : Nat, ctx.StageProperty n
  | .transitionCompatibility => ctx.HasTransitionCompatibility
  | .inverseLimitObject => ctx.HasInverseLimitObject
  | .propertyPreservedUnderRestriction => ctx.HasTransitionCompatibility
  | .uniformBound => ctx.HasUniformBound
  | .monotonicityOrCoherence => ctx.HasMonotonicity
  | .compactnessOrDiagonalArgument => ctx.HasCompactnessArgument
  | .convergenceRate => ctx.HasConvergenceRate
  | .transferTheorem => ctx.HasTransferTheorem
  | .quantifierShiftFromFiniteToAll =>
      (∀ n : Nat, ctx.HasFiniteWitness n) ->
      (∀ n : Nat, ctx.StageProperty n) ->
      ctx.AsymptoticProperty
  | .finalAsymptoticExtraction => finalClaim ctx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3d857b017b1a44272b38487c4113deefd64193994bc127557b31caf4075880f5.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b04b1952ed9b49bf1d8e5bfda4c1b527c91cd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
