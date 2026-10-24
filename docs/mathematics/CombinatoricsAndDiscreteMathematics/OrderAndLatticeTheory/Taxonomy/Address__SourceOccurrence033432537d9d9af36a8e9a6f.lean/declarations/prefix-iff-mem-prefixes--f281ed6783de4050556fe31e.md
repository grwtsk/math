# prefix_iff_mem_prefixes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8030ce1c-ec06-2f7f-3216-654ca711d47f",
  "kind": "theorem",
  "lexical_name": "prefix_iff_mem_prefixes",
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
  "slug": "prefix-iff-mem-prefixes--f281ed6783de4050556fe31e",
  "source": {
    "blob": "4d4b72808aa028026237ee503edf94ae424f0be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 148,
    "path": "GRWTSK/Order/Taxonomy/Address.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f281ed6783de4050556fe31e1494b620235c023d367c1178fb46949eea718b61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8030ce1c-ec06-2f7f-3216-654ca711d47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefix_iff_mem_prefixes (a b : Address) : Prefix a b ↔ a ∈ prefixes b := by
  induction b generalizing a with
  | nil => cases a <;> simp [Prefix, prefixes]
  | cons b bs ih =>
    cases a with
    | nil => simp [Prefix, prefixes]
    | cons a as =>
      constructor
      · intro h
        apply List.mem_cons.mpr
        apply Or.inr
        apply List.mem_map.mpr
        refine ⟨as, (ih as).mp h.2, ?_⟩
        exact congrArg (fun x => x :: as) h.1.symm
      · intro h
        have hmap : a :: as ∈ (prefixes bs).map (List.cons b) := by
          rcases List.mem_cons.mp h with hnil | hmap
          · cases hnil
          · exact hmap
        rcases List.mem_map.mp hmap with ⟨tail, htail, heq⟩
        have hh : b = a ∧ tail = as := List.cons.inj heq
        exact ⟨hh.1.symm, (ih as).mpr (hh.2 ▸ htail)⟩

end GRWTSK.Order.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Order/Taxonomy/Address.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4b72808aa028026237ee503edf94ae424f0be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
