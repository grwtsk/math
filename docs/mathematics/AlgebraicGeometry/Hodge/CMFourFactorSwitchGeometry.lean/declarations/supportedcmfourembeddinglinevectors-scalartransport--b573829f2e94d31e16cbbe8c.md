# SupportedCMFourEmbeddingLineVectors.scalarTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0046ff2a37c7161f5541209caa458e2d5ad92098f086a821ce5a34321d247eb7",
  "kind": "def",
  "lexical_name": "SupportedCMFourEmbeddingLineVectors.scalarTransport",
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
  "slug": "supportedcmfourembeddinglinevectors-scalartransport--b573829f2e94d31e16cbbe8c",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1101,
    "line": 1063,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b573829f2e94d31e16cbbe8cc655e163a7717f178fabd439580de8fb573a26aa",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0046ff2a37c7161f5541209caa458e2d5ad92098f086a821ce5a34321d247eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1063–1101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SupportedCMFourEmbeddingLineVectors.scalarTransport
    (D : SupportedCMFourEmbeddingLineVectors)
    (σ : AlgebraicNumbers ≃ₐ[ℚ] AlgebraicNumbers) :
    SupportedCMFourEmbeddingLineVectors where
  global := D.global.scalarTransport σ
  support := {
    E := D.support.E
    localVector := D.support.scalarTransportLocal σ
    localCharacter := fun r =>
      (σ.restrictNormal D.support.E.carrier) *
        D.support.localCharacter r
    globalCharacter := fun r => σ * D.support.globalCharacter r
    globalCharacter_toAlgHom := fun r => by
      rw [CMEmbeddingTransport.FourEmbeddingLineVectors.scalarTransport_character]
      rw [← D.support.globalCharacter_toAlgHom r]
      ext x
      rfl
    local_mem := fun r => by
      rw [← CMEmbeddingTransport.transportedCharacter_eq_mul
        (σ.restrictNormal D.support.E.carrier)
        (D.support.localCharacter r)]
      exact
        CMEmbeddingTransport.scalarConjugate_mem_embeddingEigenspace
          (σ.restrictNormal D.support.E.carrier)
          (D.support.localCharacter r).toAlgHom
          (D.support.local_mem r)
    vector_inclusion := fun r =>
      D.support.scalarTransportLocal_inclusion σ r
    character_restriction := fun r => by
      ext x
      apply Subtype.ext
      rw [AlgEquiv.restrictNormal_commutes]
      rw [AlgEquiv.restrictNormal_commutes]
      rw [D.support.character_restriction r]
      rfl
  }

/-- The transported global vectors remain represented by local vectors in the
same common finite Galois CM carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L1063).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
