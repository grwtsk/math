# skyscraperPresheafCoconeIsColimitOfNotSpecializes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4336cdf9d58405ec14104312a7a86bc3fee34c355a279ed92a9a403dafbb6597",
  "kind": "def",
  "lexical_name": "skyscraperPresheafCoconeIsColimitOfNotSpecializes",
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
  "slug": "skyscraperpresheafcoconeiscolimitofnotspecializes--726fad349fffc98e07056f25",
  "source": {
    "blob": "9751ba8cc7927557270048d163af7eb64d03e005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 200,
    "path": "GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:726fad349fffc98e07056f25c6d5c6eb52172de3c0309689dc910393f7e47d6d",
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

Occurrence: `declaration:4336cdf9d58405ec14104312a7a86bc3fee34c355a279ed92a9a403dafbb6597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def skyscraperPresheafCoconeIsColimitOfNotSpecializes {y : X} (h : ¬p₀ ⤳ y) :
    IsColimit (skyscraperPresheafCocone p₀ A y) :=
  let h1 : ∃ U : OpenNhds y, p₀ ∉ U.1 :=
    let ⟨U, ho, h₀, hy⟩ := not_specializes_iff_exists_open.mp h
    ⟨⟨⟨U, ho⟩, h₀⟩, hy⟩
  { desc := fun c => eqToHom (if_neg h1.choose_spec).symm ≫ c.ι.app (op h1.choose)
    fac := fun c U => by
      change _ = c.ι.app (op U.unop)
      simp only [← c.w (homOfLE <| @inf_le_left _ _ h1.choose U.unop).op, ←
        c.w (homOfLE <| @inf_le_right _ _ h1.choose U.unop).op, ← Category.assoc]
      congr 1
      refine' ((if_neg _).symm.ndrec terminalIsTerminal).hom_ext _ _
      exact fun h => h1.choose_spec h.1
    uniq := fun c f H => by
      dsimp -- Porting note : added a `dsimp`
      rw [← Category.id_comp f, ← H, ← Category.assoc]
      congr 1; apply terminalIsTerminal.hom_ext }
#align skyscraper_presheaf_cocone_is_colimit_of_not_specializes skyscraperPresheafCoconeIsColimitOfNotSpecializes

/-- If `y ∉ closure {p₀}`, then the stalk of `skyscraper_presheaf p₀ A` at `y` is isomorphic to a
terminal object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant3634e7cfda8a3f3851ad264a390ce054ab843e82d3c340a541f9d4f92f2594f5.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9751ba8cc7927557270048d163af7eb64d03e005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
