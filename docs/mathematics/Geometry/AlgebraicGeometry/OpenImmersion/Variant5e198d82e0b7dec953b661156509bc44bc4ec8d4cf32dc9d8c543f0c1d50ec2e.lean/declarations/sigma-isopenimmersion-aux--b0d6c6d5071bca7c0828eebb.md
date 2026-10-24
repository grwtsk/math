# sigma_ι_isOpenImmersion_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:150535a8e39bee0574a2050d1eadeafc99a086bab8599806c3519cbbc7a0b8e9",
  "kind": "instance",
  "lexical_name": "sigma_ι_isOpenImmersion_aux",
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
  "slug": "sigma-isopenimmersion-aux--b0d6c6d5071bca7c0828eebb",
  "source": {
    "blob": "2823eb6226890efa94548b285fde55731f8229d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 880,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0d6c6d5071bca7c0828eebb5ccbd1676634ff5eb117be2b7493200338d6ca58",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:150535a8e39bee0574a2050d1eadeafc99a086bab8599806c3519cbbc7a0b8e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sigma_ι_isOpenImmersion_aux [HasStrictTerminalObjects C] :
    SheafedSpace.IsOpenImmersion (colimit.ι F i) where
  base_open := sigma_ι_isOpenEmbedding F i
  c_iso U := by
    have e : colimit.ι F i = _ :=
      (ι_preservesColimitIso_inv SheafedSpace.forgetToPresheafedSpace F i).symm
    have H :
      IsOpenEmbedding
        (colimit.ι (F ⋙ SheafedSpace.forgetToPresheafedSpace) i ≫
            (preservesColimitIso SheafedSpace.forgetToPresheafedSpace F).inv).base :=
      e ▸ sigma_ι_isOpenEmbedding F i
    suffices IsIso <| (colimit.ι (F ⋙ SheafedSpace.forgetToPresheafedSpace) i ≫
        (preservesColimitIso SheafedSpace.forgetToPresheafedSpace F).inv).c.app <|
      op (H.isOpenMap.functor.obj U) by
      -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11083): just `convert` is very slow, so helps it a bit
      convert this using 2 <;> congr
    rw [PresheafedSpace.comp_c_app,
      ← PresheafedSpace.colimitPresheafObjIsoComponentwiseLimit_hom_π]
    -- Porting note: this instance created manually to make the `inferInstance` below work
    have inst1 : IsIso (preservesColimitIso forgetToPresheafedSpace F).inv.c :=
      PresheafedSpace.c_isIso_of_iso _
    rsuffices : IsIso
        (limit.π
          (PresheafedSpace.componentwiseDiagram (F ⋙ SheafedSpace.forgetToPresheafedSpace)
            ((Opens.map
                  (preservesColimitIso SheafedSpace.forgetToPresheafedSpace F).inv.base).obj
              (unop <| op <| H.isOpenMap.functor.obj U)))
          (op i))
    · infer_instance
    apply limit_π_isIso_of_is_strict_terminal
    intro j hj
    induction j with | op j => ?_
    dsimp
    convert (F.obj j).sheaf.isTerminalOfEmpty using 3
    convert image_preimage_is_empty F i j (fun h => hj (congr_arg op h.symm)) U using 6
    exact (congr_arg PresheafedSpace.Hom.base e).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2823eb6226890efa94548b285fde55731f8229d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
