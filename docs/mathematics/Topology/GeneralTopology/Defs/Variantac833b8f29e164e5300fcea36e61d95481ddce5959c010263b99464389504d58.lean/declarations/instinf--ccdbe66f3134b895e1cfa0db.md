# instInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5663efbde337c48febe36e21907eb2370ba280aef73d1cd809a39b985533953",
  "kind": "instance",
  "lexical_name": "instInf",
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
  "slug": "instinf--ccdbe66f3134b895e1cfa0db",
  "source": {
    "blob": "e54f4871a5be021db66b117afb5aa8489669a342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccdbe66f3134b895e1cfa0dbb0f6985a5fef4a5648665cd82e6a1bf793d49d20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5663efbde337c48febe36e21907eb2370ba280aef73d1cd809a39b985533953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instInf : Min (Filter α) :=
  ⟨fun f g : Filter α =>
    { sets := { s | ∃ a ∈ f, ∃ b ∈ g, s = a ∩ b }
      univ_sets := ⟨_, univ_mem, _, univ_mem, by simp⟩
      sets_of_superset := by
        rintro x y ⟨a, ha, b, hb, rfl⟩ xy
        refine ⟨a ∪ y, mem_of_superset ha subset_union_left, b ∪ y,
          mem_of_superset hb subset_union_left, ?_⟩
        rw [← inter_union_distrib_right, union_eq_self_of_subset_left xy]
      inter_sets := by
        rintro x y ⟨a, ha, b, hb, rfl⟩ ⟨c, hc, d, hd, rfl⟩
        refine ⟨a ∩ c, inter_mem ha hc, b ∩ d, inter_mem hb hd, ?_⟩
        ac_rfl }⟩

/-- The supremum of two filters is the filter that contains sets that belong to both filters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54f4871a5be021db66b117afb5aa8489669a342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
