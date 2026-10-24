# HarmonicShapeUpdateSNARK

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:251518362a8ecbb32337878b754c1a2b077e739cb1bada228c8516463361ae6e",
  "kind": "structure",
  "lexical_name": "HarmonicShapeUpdateSNARK",
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
  "slug": "harmonicshapeupdatesnark--b70fcb5f3ba4b82cfece3f2c",
  "source": {
    "blob": "857d5ce40c0f246f077e76e1b7e4dcb51784c0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 333,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b70fcb5f3ba4b82cfece3f2cbb11b2c3d8bc6f9dab50be08205d94b6ffad1e9a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:251518362a8ecbb32337878b754c1a2b077e739cb1bada228c8516463361ae6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HarmonicShapeUpdateSNARK (k : Nat) where
  circuit : HarmonicRelationCircuit k
  ProvingKey : Type
  VerificationKey : Type
  Proof : Type
  ProverRandomness : Type
  SimulatorRandomness : Type
  View : Type
  keyOK : ProvingKey → VerificationKey → Prop
  prove :
    ProvingKey →
      PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement →
      HarmonicShapeUpdatePrivateWitness k →
      ProverRandomness →
      Proof
  verify :
    VerificationKey →
      PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement →
      Proof →
      Bool
  extract :
    VerificationKey →
      PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement →
      Proof →
      Option (HarmonicShapeUpdatePrivateWitness k)
  view :
    VerificationKey →
      PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement →
      Proof →
      View
  simulate :
    VerificationKey →
      PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement →
      SimulatorRandomness →
      View
  indistinguishable :
    View → View → Prop
  completeness :
    ∀ {pk : ProvingKey}
      {vk : VerificationKey}
      {P : PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement}
      {W : HarmonicShapeUpdatePrivateWitness k},
      keyOK pk vk →
      HarmonicShapeUpdateRelation P W →
      ∀ ρ : ProverRandomness,
        verify vk P (prove pk P W ρ) = true
  soundness :
    ∀ {vk : VerificationKey}
      {P : PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement}
      {proof : Proof},
      verify vk P proof = true →
        ∃ W : HarmonicShapeUpdatePrivateWitness k,
          extract vk P proof = some W ∧
            HarmonicShapeUpdateRelation P W
  zeroKnowledge :
    ∀ {pk : ProvingKey}
      {vk : VerificationKey}
      {P : PrismaticShapeUpdateZKP.ShapeUpdatePublicStatement}
      {W : HarmonicShapeUpdatePrivateWitness k},
      keyOK pk vk →
      HarmonicShapeUpdateRelation P W →
      ∀ ρ : ProverRandomness,
      ∀ σ : SimulatorRandomness,
        indistinguishable
          (view vk P (prove pk P W ρ))
          (simulate vk P σ)

namespace HarmonicShapeUpdateSNARK

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralHarmonicSNARKInterface/Variantddede7794840b70d51cc10136fe7e48a603bb3b69e72d31bef39f6df87323923.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `857d5ce40c0f246f077e76e1b7e4dcb51784c0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
