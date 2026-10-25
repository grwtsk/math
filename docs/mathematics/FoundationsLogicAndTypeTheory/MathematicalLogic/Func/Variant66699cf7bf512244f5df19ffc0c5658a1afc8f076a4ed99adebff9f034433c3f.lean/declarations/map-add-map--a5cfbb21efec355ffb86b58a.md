# map_add_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc9a3a89-e91b-ed4b-4aef-55110b1d43d2",
  "kind": "theorem",
  "lexical_name": "map_add_map",
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
  "slug": "map-add-map--a5cfbb21efec355ffb86b58a",
  "source": {
    "blob": "add2c0c02601450e523f4742e87613b9b7116c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 359,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5cfbb21efec355ffb86b58a67afd7ba3b831d1336df8c370c253a972844135a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc9a3a89-e91b-ed4b-4aef-55110b1d43d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_add_map {α : Type u} [AddMonoid α] (f g : α → α) {as : List α} :
    add (as.map f) (as.map g) = as.map fun x ↦ f x + g x := by
  apply @eq_of_equiv _ (⟨0⟩ : Inhabited α)
  · rw [length_map, length_add, max_eq_left, length_map]
    apply le_of_eq
    rw [length_map, length_map]
  intro m
  rw [get_add]
  by_cases h : m < length as
  · repeat' rw [@get_map α α ⟨0⟩ ⟨0⟩ _ _ _ h]
  rw [not_lt] at h
  repeat' rw [@get_eq_default_of_le _ ⟨0⟩ m] <;> try rw [length_map]; apply h
  exact zero_add _
#align list.func.map_add_map List.Func.map_add_map

-- sub
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `add2c0c02601450e523f4742e87613b9b7116c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
