# toSkyscraperPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:086dee971e4479c4391db8ecadbeec0587f6d27cd0730c6852fff104b60f7faf",
  "kind": "def",
  "lexical_name": "toSkyscraperPresheaf",
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
  "slug": "toskyscraperpresheaf--3dd146adb905ddf40b288d0c",
  "source": {
    "blob": "64b8aa67a242a3e0c827bfc3f8f0b380cc06eb37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 254,
    "path": "GRWTSK/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3dd146adb905ddf40b288d0c4dd41a6430d13d187288259faa7a2dfeb7bcf7c2",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:086dee971e4479c4391db8ecadbeec0587f6d27cd0730c6852fff104b60f7faf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSkyscraperPresheaf {𝓕 : Presheaf C X} {c : C} (f : 𝓕.stalk p₀ ⟶ c) :
    𝓕 ⟶ skyscraperPresheaf p₀ c where
  app U :=
    if h : p₀ ∈ U.unop then 𝓕.germ _ p₀ h ≫ f ≫ eqToHom (if_pos h).symm
    else ((if_neg h).symm.ndrec terminalIsTerminal).from _
  naturality U V inc := by
    dsimp
    by_cases hV : p₀ ∈ V.unop
    · have hU : p₀ ∈ U.unop := leOfHom inc.unop hV
      split_ifs
      rw [← Category.assoc, 𝓕.germ_res' inc, Category.assoc, Category.assoc, eqToHom_trans]
    · split_ifs
      exact ((if_neg hV).symm.ndrec terminalIsTerminal).hom_ext ..

/-- If `f : 𝓕 ⟶ skyscraperPresheaf p₀ c` is a natural transformation, then there is a morphism
`𝓕.stalk p₀ ⟶ c` defined as the morphism from colimit to cocone at `c`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variantce813d8ebc1af43f220614deaa67a6e4a1dc78c48d30ac846bff4fb57767f905.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b8aa67a242a3e0c827bfc3f8f0b380cc06eb37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
