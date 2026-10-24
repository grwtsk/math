# SkyscraperPresheafFunctor.map'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50f5dcb6b7cc1dffa3b5a7ecbc7ef6b6f75c851075202284cabb3e9331a895ea",
  "kind": "def",
  "lexical_name": "SkyscraperPresheafFunctor.map'",
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
  "slug": "skyscraperpresheaffunctor-map--4b313b6124c5312271d3a1dc",
  "source": {
    "blob": "9132a6ad081a9f67fcff93cb1987dec501dfd4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b313b6124c5312271d3a1dc06d49d7364e559d4b6305989f0534fcba0601fe0",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50f5dcb6b7cc1dffa3b5a7ecbc7ef6b6f75c851075202284cabb3e9331a895ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SkyscraperPresheafFunctor.map' {a b : C} (f : a ⟶ b) :
    skyscraperPresheaf p₀ a ⟶ skyscraperPresheaf p₀ b where
  app U :=
    if h : p₀ ∈ U.unop then eqToHom (if_pos h) ≫ f ≫ eqToHom (if_pos h).symm
    else ((if_neg h).symm.ndrec terminalIsTerminal).from _
  naturality U V i := by
    simp only [skyscraperPresheaf_map]; by_cases hV : p₀ ∈ V.unop
    · have hU : p₀ ∈ U.unop := leOfHom i.unop hV; split_ifs <;>
      simp only [eqToHom_trans_assoc, Category.assoc, eqToHom_trans]
    · apply ((if_neg hV).symm.ndrec terminalIsTerminal).hom_ext
#align skyscraper_presheaf_functor.map' SkyscraperPresheafFunctor.map'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9132a6ad081a9f67fcff93cb1987dec501dfd4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
