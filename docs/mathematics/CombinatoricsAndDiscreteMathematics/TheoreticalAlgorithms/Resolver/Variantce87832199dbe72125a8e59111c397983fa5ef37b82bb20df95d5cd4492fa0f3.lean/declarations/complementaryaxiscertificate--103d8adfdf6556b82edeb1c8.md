# ComplementaryAxisCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94b1a804e1157bdf897732ff16bf28892960548d7a14794f194a1650cb4f4b02",
  "kind": "structure",
  "lexical_name": "ComplementaryAxisCertificate",
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
  "slug": "complementaryaxiscertificate--103d8adfdf6556b82edeb1c8",
  "source": {
    "blob": "ae7649bacf596fe06c5ce1f34eda14dbc7c42804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantce87832199dbe72125a8e59111c397983fa5ef37b82bb20df95d5cd4492fa0f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:103d8adfdf6556b82edeb1c8ab3e2c60089995405723c06e959b0cbccf1be649",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantce87832199dbe72125a8e59111c397983fa5ef37b82bb20df95d5cd4492fa0f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94b1a804e1157bdf897732ff16bf28892960548d7a14794f194a1650cb4f4b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ComplementaryAxisCertificate (N D : Nat) where
  source : TensorState N D
  transformed : TensorState N D
  witnessObservable : HermitianObservable N D
  witnessInterval :
    ExpectationIntervalCertificate witnessObservable source
  exitThreshold : ℝ
  actuationError : ℝ
  actuationError_nonnegative : 0 ≤ actuationError
  witnessMargin :
    exitThreshold + actuationError ≤
      witnessInterval.interval.absmin
  postObservable : HermitianObservable N D
  postInterval :
    ExpectationIntervalCertificate postObservable transformed
  postcondition :
    OutsideBand postInterval.interval exitThreshold
  semanticTransport : Prop
  semanticTransport_proved : semanticTransport
  physicalActuationAuthority : Prop
  physicalActuationAuthority_proved :
    physicalActuationAuthority

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantce87832199dbe72125a8e59111c397983fa5ef37b82bb20df95d5cd4492fa0f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantce87832199dbe72125a8e59111c397983fa5ef37b82bb20df95d5cd4492fa0f3.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae7649bacf596fe06c5ce1f34eda14dbc7c42804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
