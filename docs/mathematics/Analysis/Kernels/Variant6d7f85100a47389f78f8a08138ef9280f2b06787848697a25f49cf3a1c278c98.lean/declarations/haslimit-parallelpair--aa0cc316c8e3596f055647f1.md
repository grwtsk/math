# hasLimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9821e87655af6ddfa30f1962210e8d1cbe5d2a2c901541f2ffa7c0d2ab860841",
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
  "slug": "haslimit-parallelpair--aa0cc316c8e3596f055647f1",
  "source": {
    "blob": "8f71cfb96260d98a8a25693c00b06bd60db2b920",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 112,
    "path": "GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa0cc316c8e3596f055647f1b9128fc817239a0ed80538f56af43cd4206ca5fb",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9821e87655af6ddfa30f1962210e8d1cbe5d2a2c901541f2ffa7c0d2ab860841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasLimit_parallelPair {V W : SemiNormedGrp.{u}} (f g : V ⟶ W) :
    HasLimit (parallelPair f g) where
  exists_limit :=
    Nonempty.intro
      { cone := fork f g
        isLimit :=
          have this := fun (c : Fork f g) =>
            show NormedAddGroupHom.compHom (f - g).hom c.ι.hom = 0 by
              rw [hom_sub, AddMonoidHom.map_sub, AddMonoidHom.sub_apply, sub_eq_zero]
              exact congr_arg Hom.hom c.condition
          Fork.IsLimit.mk _
            (fun c => ofHom <|
              NormedAddGroupHom.ker.lift (Fork.ι c).hom _ <| this c)
            (fun _ => SemiNormedGrp.hom_ext <| NormedAddGroupHom.ker.incl_comp_lift _ _ (this _))
            fun c g h => by ext x; dsimp; simp_rw [← h]; rfl}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f71cfb96260d98a8a25693c00b06bd60db2b920` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
