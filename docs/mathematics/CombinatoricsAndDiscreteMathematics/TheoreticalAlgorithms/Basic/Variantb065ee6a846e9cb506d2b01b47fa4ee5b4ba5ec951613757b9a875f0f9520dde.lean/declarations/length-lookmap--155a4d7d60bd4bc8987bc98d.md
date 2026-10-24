# length_lookmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25f29000-35f0-4e84-f675-994ad198834a",
  "kind": "theorem",
  "lexical_name": "length_lookmap",
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
  "slug": "length-lookmap--155a4d7d60bd4bc8987bc98d",
  "source": {
    "blob": "bb2da47a2f8597262ac23969079ed20f1fa2ed43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3374,
    "line": 3319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:155a4d7d60bd4bc8987bc98d728aeb746448daeb3c37c86c4f9750b0b70e5967",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25f29000-35f0-4e84-f675-994ad198834a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3319–3374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_lookmap (l : List α) : length (l.lookmap f) = length l := by
  rw [← length_map, lookmap_map_eq _ fun _ => (), length_map]; simp
#align list.length_lookmap List.length_lookmap

end Lookmap

/-! ### filter -/
/-! ### filterMap -/

#align list.filter_map_nil List.filterMap_nil

-- Porting note: List.filterMap is given @[simp] in Std.Data.List.Init.Lemmas
-- @[simp]
-- Later porting note (at time of this lemma moving to Std): removing attribute `nolint simpNF`
attribute [simp 1100] filterMap_cons_none
#align list.filter_map_cons_none List.filterMap_cons_none

-- @[simp]
-- Later porting note (at time of this lemma moving to Std): removing attribute `nolint simpNF`
attribute [simp 1100] filterMap_cons_some
#align list.filter_map_cons_some List.filterMap_cons_some

#align list.filter_map_cons List.filterMap_cons

#align list.filter_map_append List.filterMap_append

#align list.filter_map_eq_map List.filterMap_eq_map

#align list.filter_map_eq_filter List.filterMap_eq_filter

#align list.filter_map_filter_map List.filterMap_filterMap

#align list.map_filter_map List.map_filterMap

#align list.filter_map_map List.filterMap_map

#align list.filter_filter_map List.filter_filterMap

#align list.filter_map_filter List.filterMap_filter

#align list.filter_map_some List.filterMap_some

#align list.map_filter_map_some_eq_filter_map_is_some List.map_filterMap_some_eq_filter_map_is_some

#align list.mem_filter_map List.mem_filterMap

#align list.filter_map_join List.filterMap_join

#align list.map_filter_map_of_inv List.map_filterMap_of_inv

#align list.length_filter_le List.length_filter_leₓ

#align list.length_filter_map_le List.length_filterMap_le

#align list.sublist.filter_map List.Sublist.filterMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean#L3319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2da47a2f8597262ac23969079ed20f1fa2ed43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
