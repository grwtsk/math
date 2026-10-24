# ofOpenSubsets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bc41fe88ea0c9951bb463eb65e47670adf16c26364b879f23ab166efb0a938f",
  "kind": "def",
  "lexical_name": "ofOpenSubsets",
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
  "slug": "ofopensubsets--75c5906aede9ed2f34f6d395",
  "source": {
    "blob": "802ab5a48fc2bafc2785400233ac230009dd09c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 435,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75c5906aede9ed2f34f6d3951cb62d2895f746838f91b8c75fb95442ecaedfbe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bc41fe88ea0c9951bb463eb65e47670adf16c26364b879f23ab166efb0a938f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofOpenSubsets : TopCat.GlueData.{u} :=
  mk'.{u}
    { J
      U := fun i => (Opens.toTopCat <| TopCat.of α).obj (U i)
      V := fun i j => (Opens.map <| Opens.inclusion _).obj (U j)
      t := fun i j => ⟨fun x => ⟨⟨x.1.1, x.2⟩, x.1.2⟩, by
        -- Porting note: was `continuity`, see https://github.com/leanprover-community/mathlib4/issues/5030
        refine Continuous.subtype_mk ?_ ?_
        refine Continuous.subtype_mk ?_ ?_
        continuity⟩
      V_id := fun i => by
        ext
        -- porting note: no longer needed `cases U i`!
        simp
      t_id := fun i => by ext; rfl
      t_inter := fun i j k x hx => hx
      cocycle := fun i j k x h => rfl }
set_option linter.uppercaseLean3 false in
#align Top.glue_data.of_open_subsets TopCat.GlueData.ofOpenSubsets

/-- The canonical map from the glue of a family of open subsets `α` into `α`.
This map is an open embedding (`fromOpenSubsetsGlue_openEmbedding`),
and its range is `⋃ i, (U i : Set α)` (`range_fromOpenSubsetsGlue`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant7e958de37e962f3ac915d8980f9671ba01bf559861ecd789fabc1370366a86de.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `802ab5a48fc2bafc2785400233ac230009dd09c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
