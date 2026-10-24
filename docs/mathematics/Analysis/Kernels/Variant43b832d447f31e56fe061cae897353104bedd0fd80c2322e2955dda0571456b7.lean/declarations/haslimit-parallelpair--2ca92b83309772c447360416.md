# hasLimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86475741e52b79a2ada4fdc5c28b2cec908a20b9411183b4fa84df813df2415a",
  "kind": "instance",
  "lexical_name": "hasLimit_parallelPair",
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
  "slug": "haslimit-parallelpair--2ca92b83309772c447360416",
  "source": {
    "blob": "152ba3a3d004a66207acb714fc84ca85797ea536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 105,
    "path": "GRWTSK/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ca92b83309772c447360416845f9e3eb3768ae88647a21982fec3b5285e893e",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86475741e52b79a2ada4fdc5c28b2cec908a20b9411183b4fa84df813df2415a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasLimit_parallelPair {V W : SemiNormedGrp.{u}} (f g : V ⟶ W) :
    HasLimit (parallelPair f g) where
  exists_limit :=
    Nonempty.intro
      { cone := fork f g
        isLimit :=
          have := fun (c : Fork f g) =>
            show NormedAddGroupHom.compHom (f - g).hom c.ι.hom = 0 by
              rw [hom_sub, map_sub, AddMonoidHom.sub_apply, sub_eq_zero]
              exact congr_arg Hom.hom c.condition
          Fork.IsLimit.mk _
            (fun c => ofHom <|
              NormedAddGroupHom.ker.lift (Fork.ι c).hom _ <| this c)
            (fun _ => SemiNormedGrp.hom_ext <| NormedAddGroupHom.ker.incl_comp_lift _ _ (this _))
            fun c g h => by ext x; dsimp; simp_rw [← h]; rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant43b832d447f31e56fe061cae897353104bedd0fd80c2322e2955dda0571456b7.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152ba3a3d004a66207acb714fc84ca85797ea536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
