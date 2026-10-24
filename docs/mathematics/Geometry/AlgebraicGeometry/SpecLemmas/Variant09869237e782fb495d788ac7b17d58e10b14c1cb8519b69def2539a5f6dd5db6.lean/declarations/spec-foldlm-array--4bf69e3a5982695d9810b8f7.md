# Spec.foldlM_array

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:348b38b8-4316-43f3-4d71-758a799254d3",
  "kind": "theorem",
  "lexical_name": "Spec.foldlM_array",
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
  "slug": "spec-foldlm-array--4bf69e3a5982695d9810b8f7",
  "source": {
    "blob": "565e710ecdc3dcba2201dacdecda4b4cf2273efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2048,
    "line": 2026,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bf69e3a5982695d9810b8f7ab8c1767d459ee4ea0b6231fe55069557a61855b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:348b38b8-4316-43f3-4d71-758a799254d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2026–2048.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.foldlM_array {α β : Type u} {m : Type u → Type v} {ps : PostShape}
    [Monad m] [WPMonad m ps]
    {xs : Array α} {init : β} {f : β → α → m β}
    (inv : Invariant xs.toList β ps)
    (step : ∀ pref cur suff (h : xs.toList = pref ++ cur :: suff) b,
      Triple
        (f b cur)
        (inv.1 (⟨pref, cur::suff, h.symm⟩, b))
        (fun b' => inv.1 (⟨pref ++ [cur], suff, by simp [h]⟩, b'), inv.2)) :
    Triple (Array.foldlM f init xs) (inv.1 (⟨[], xs.toList, rfl⟩, init)) (fun b => inv.1 (⟨xs.toList, [], by simp⟩, b), inv.2) := by
  cases xs
  simp
  apply Spec.foldlM_list inv step

/--
The type of loop invariants used by the specifications of `for ... in ...` loops over strings.
A loop invariant is a `PostCond` that takes as parameters

* A `String.Pos` representing the current position in the string `s`.
* A state tuple of type `β`, which will be a nesting of `MProd`s representing the elaboration of
  `let mut` variables and early return.
-/
@[spec_invariant_type, simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean#L2026).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565e710ecdc3dcba2201dacdecda4b4cf2273efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
