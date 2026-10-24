# unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40ca3a1babb6b050530eaf720b27a02dc24e27805abe8983da4ac32e4f36e1ac",
  "kind": "def",
  "lexical_name": "unit",
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
  "slug": "unit--8cd11ccf89d64b35e276aad1",
  "source": {
    "blob": "9751ba8cc7927557270048d163af7eb64d03e005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 332,
    "path": "GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cd11ccf89d64b35e276aad1f031a956f7451c2bb606df8e8430066946fa2f44",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40ca3a1babb6b050530eaf720b27a02dc24e27805abe8983da4ac32e4f36e1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def unit : 𝟭 (Presheaf C X) ⟶ Presheaf.stalkFunctor C p₀ ⋙ skyscraperPresheafFunctor p₀
    where
  app 𝓕 := toSkyscraperPresheaf _ <| 𝟙 _
  naturality 𝓕 𝓖 f := by
    ext U; dsimp
    -- Porting note : added the following `rw` and `dsimp` to make it compile
    rw [NatTrans.comp_app, toSkyscraperPresheaf_app, NatTrans.comp_app, toSkyscraperPresheaf_app]
    dsimp only [skyscraperPresheaf_obj, unop_op, Eq.ndrec, SkyscraperPresheafFunctor.map'_app]
    split_ifs with h
    · simp only [Category.id_comp, ← Category.assoc]; rw [comp_eqToHom_iff]
      simp only [Category.assoc, eqToHom_trans, eqToHom_refl, Category.comp_id]
      erw [colimit.ι_map]; rfl
    · apply ((if_neg h).symm.ndrec terminalIsTerminal).hom_ext
#align stalk_skyscraper_presheaf_adjunction_auxs.unit StalkSkyscraperPresheafAdjunctionAuxs.unit

/-- The counit in `presheaf.stalk ⊣ skyscraper_presheaf_functor`
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9751ba8cc7927557270048d163af7eb64d03e005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
