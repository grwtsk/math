# UniversalCoefficientTorsionTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:787fb95670aaab89f7ee211aa13685cb315db510fb1db4b9aab1092a7e816a95",
  "kind": "structure",
  "lexical_name": "UniversalCoefficientTorsionTransfer",
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
  "slug": "universalcoefficienttorsiontransfer--f11856d8521e184a8b8fdc0d",
  "source": {
    "blob": "d0521bc46e1b18a1795456bd3ee7356c5d7fab2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 30,
    "path": "GRWTSK/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f11856d8521e184a8b8fdc0d17e6dc43fbe47443b739903aafe5cf59793249da",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:787fb95670aaab89f7ee211aa13685cb315db510fb1db4b9aab1092a7e816a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniversalCoefficientTorsionTransfer
    (IntegralCohomology : Type u)
    (PreviousHomologyTorsion : Type v)
    (FreeDual : Type w)
    [AddCommGroup IntegralCohomology]
    [AddCommGroup PreviousHomologyTorsion]
    [AddCommGroup FreeDual] where
  previousHomologyDegree : Nat
  extTerm : Type v
  extTermAddCommGroup : AddCommGroup extTerm
  includeExt : extTerm →+ IntegralCohomology
  projectFree : IntegralCohomology →+ FreeDual
  includeExt_injective : Function.Injective includeExt
  projectFree_surjective : Function.Surjective projectFree
  exact : Function.Exact includeExt projectFree
  integralTorsion : AddSubgroup IntegralCohomology
  extRange_is_torsion :
    AddMonoidHom.range includeExt = integralTorsion
  integralTorsionFinite : Finite integralTorsion
  canonicalPontryaginDual :
    extTerm ≃+ CharacterModule PreviousHomologyTorsion
  previousTorsionFinite : Finite PreviousHomologyTorsion
  chosenGeneratorIdentification :
    Option (integralTorsion ≃+ PreviousHomologyTorsion)
  sequenceCertificate : ObjectAddress
  dependencyDigest : Digest

namespace UniversalCoefficientTorsionTransfer

variable
    {IntegralCohomology : Type u}
    {PreviousHomologyTorsion : Type v}
    {FreeDual : Type w}
    [AddCommGroup IntegralCohomology]
    [AddCommGroup PreviousHomologyTorsion]
    [AddCommGroup FreeDual]
    (transfer :
      UniversalCoefficientTorsionTransfer
        IntegralCohomology PreviousHomologyTorsion FreeDual)

/-- The represented integral cohomology degree, with the UCT shift explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalCoefficient/Variant4def59c039d475faafb7caed486d9fe5e1a2d10c843b3d293a860f438f8e4bf4.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0521bc46e1b18a1795456bd3ee7356c5d7fab2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
