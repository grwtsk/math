# ZKPRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a33c178cd54fd2f076ee5db3a60233f486d0f122cac0fb5ef75688005eb9c165",
  "kind": "def",
  "lexical_name": "ZKPRelation",
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
  "slug": "zkprelation--e42fd6c07563283e334022bb",
  "source": {
    "blob": "130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e42fd6c07563283e334022bb777c557269b631bb0795dc0166ce8f6c0213aefb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a33c178cd54fd2f076ee5db3a60233f486d0f122cac0fb5ef75688005eb9c165`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ZKPRelation
    (S : PublicStatement)
    (W : PrivateWitness) : Prop :=
  W.model.fieldTDAObservation = S.observation ∧
    W.model.rationalTorsion = S.claim.claimedTorsion ∧
    W.topological.boundaryCycleOK ∧
    W.topological.kernelDimensionOK ∧
    W.topological.barcodeMatchesPublic ∧
    W.arithmetic.curveEquationOK ∧
    W.arithmetic.groupLawOK ∧
    W.arithmetic.scalarMultipleIsInfinity ∧
    W.arithmetic.torsionOrderMatchesClaim ∧
    W.sameUnderlyingCoordinates

/--
Optional toroidal/prismatic shape-update evidence attached to a TDA/ZKP witness.

This is an extra finite witness channel. It does not alter the field-only
collision theorem and does not make TDA recover arithmetic torsion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
