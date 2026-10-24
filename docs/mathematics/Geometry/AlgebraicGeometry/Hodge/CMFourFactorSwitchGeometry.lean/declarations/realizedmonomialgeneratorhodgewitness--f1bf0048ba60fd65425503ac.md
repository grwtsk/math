# RealizedMonomialGeneratorHodgeWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91c6a5b9800da997a21f0ba9723c5d0c226d845742eb4b4b4c0201b216938d9b",
  "kind": "structure",
  "lexical_name": "RealizedMonomialGeneratorHodgeWitness",
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
  "slug": "realizedmonomialgeneratorhodgewitness--f1bf0048ba60fd65425503ac",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2029,
    "line": 2008,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1bf0048ba60fd65425503ac40ab852bc46eaf4bf20ed23a836816f5bd4d89c7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91c6a5b9800da997a21f0ba9723c5d0c226d845742eb4b4b4c0201b216938d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2008–2029.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RealizedMonomialGeneratorHodgeWitness
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (hodgeSubspace : Submodule ℂ (ℂ ⊗[ℚ] V))
    (assembledGenerator : ℂ ⊗[ℚ] V) where
  E : Type*
  [E_field : Field E]
  [E_numberField : NumberField E]
  [E_isCMField : IsCMField E]
  [E_isGalois : IsGalois ℚ E]
  v₁ : CMNumberFieldIndex.OddSignRow E
  v₂ : CMNumberFieldIndex.OddSignRow E
  v₃ : CMNumberFieldIndex.OddSignRow E
  v₄ : CMNumberFieldIndex.OddSignRow E
  factors : FourCanonicalFactorsActualTyping E v₁ v₂ v₃ v₄
  hodgeRule : FourfoldActualHodgeTensorRule factors
  comparison :
    ActualFourfoldToMonomialComparison hodgeRule hodgeSubspace
  identification :
    ActualFourfoldMonomialGeneratorIdentification
      comparison assembledGenerator

/-- A realized generator witness yields descent-side Hodge membership locally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L2008).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
