# DegreeZeroDivisorClassData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab82f8a7fa8058a6a2df3893622109d9fc919c1de244579197b43c91eab57d4e",
  "kind": "structure",
  "lexical_name": "DegreeZeroDivisorClassData",
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
  "slug": "degreezerodivisorclassdata--59399bcc783b773f4e2a306e",
  "source": {
    "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 774,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59399bcc783b773f4e2a306e3adae734c2335dbd7d0c826ad536b6f43f2e40a8",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab82f8a7fa8058a6a2df3893622109d9fc919c1de244579197b43c91eab57d4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DegreeZeroDivisorClassData
    (C : LawfulShortWeierstrass.{u})
    (_P : ProjectiveWeierstrassClosureCertificate C) where
  Divisor : Type u
  PrincipalDivisor :
    Divisor → Prop
  degree :
    Divisor → Int
  degreeZero :
    Divisor → Prop
  degreeZero_iff_degree_eq_zero :
    ∀ D : Divisor, degreeZero D ↔ degree D = 0
  PicardZeroClass : Type u
  zeroClass : PicardZeroClass
  classOfDivisor :
    Divisor → PicardZeroClass
  principalDivisor_class_zero :
    ∀ D : Divisor,
      PrincipalDivisor D →
        classOfDivisor D = zeroClass
  pointDivisor :
    Point C.E → Divisor
  pointClass :
    Point C.E → PicardZeroClass
  pointClass_eq_classOfDivisor :
    ∀ Q : Point C.E,
      pointClass Q = classOfDivisor (pointDivisor Q)
  pointDivisor_degreeZero :
    ∀ Q : Point C.E,
      degreeZero (pointDivisor Q)
  pointAtInfinityClass_eq_zero :
    pointClass Point.infinity = zeroClass
  smoothPointClass_degreeZero :
    ∀ Q : Point C.E,
      OnCurve C.E Q →
        degreeZero (pointDivisor Q)
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761140093e66cc83e6c64f13f018ada1046a2f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
