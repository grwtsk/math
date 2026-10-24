# pullbackConeOfLeftIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c7ca6c7c221e026a0827a2da28fff7fc8690f61b751ee35a4d27d6af96432f4",
  "kind": "def",
  "lexical_name": "pullbackConeOfLeftIsLimit",
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
  "slug": "pullbackconeofleftislimit--651b117f688e7726acebcbbd",
  "source": {
    "blob": "7b5cad5c5347d96072ffac32f1c447d094d643a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1052,
    "line": 1027,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:651b117f688e7726acebcbbde4d3887316240d75fd6fca17e9113a492d3aa32e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c7ca6c7c221e026a0827a2da28fff7fc8690f61b751ee35a4d27d6af96432f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1027–1052.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackConeOfLeftIsLimit : IsLimit (pullbackConeOfLeft f g) :=
  PullbackCone.isLimitAux' _ fun s => by
    refine ⟨LocallyRingedSpace.Hom.mk (PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftLift
        f.1 g.1 (PullbackCone.mk _ _ (congr_arg LocallyRingedSpace.Hom.toHom s.condition))) ?_,
      LocallyRingedSpace.Hom.ext'
        (PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftLift_fst f.1 g.1 _),
      LocallyRingedSpace.Hom.ext'
          (PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftLift_snd f.1 g.1 _), ?_⟩
    · intro x
      have :=
        PresheafedSpace.stalkMap.congr_hom _ _
          (PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftLift_snd f.1 g.1
            (PullbackCone.mk s.fst.1 s.snd.1
              (congr_arg LocallyRingedSpace.Hom.toHom s.condition)))
          x
      change _ = _ ≫ s.snd.1.stalkMap x at this
      rw [PresheafedSpace.stalkMap.comp, ← IsIso.eq_inv_comp] at this
      rw [this]
      infer_instance
    · intro m _ h₂
      rw [← cancel_mono (pullbackConeOfLeft f g).snd]
      exact h₂.trans <| LocallyRingedSpace.Hom.ext'
        (PresheafedSpace.IsOpenImmersion.pullbackConeOfLeftLift_snd f.1 g.1 <|
          PullbackCone.mk s.fst.1 s.snd.1 <| congr_arg
            LocallyRingedSpace.Hom.toHom s.condition).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean#L1027).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5cad5c5347d96072ffac32f1c447d094d643a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
