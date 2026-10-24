# Spec.forIn'_roc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e525ed74-f515-bb04-44d5-fa7ce6ff3178",
  "kind": "theorem",
  "lexical_name": "Spec.forIn'_roc",
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
  "slug": "spec-forin-roc--b356b625721f9eebb8472712",
  "source": {
    "blob": "565e710ecdc3dcba2201dacdecda4b4cf2273efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1032,
    "line": 1014,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b356b625721f9eebb847271220a090092aa5f4104a5d970052dddd4e144f04b8",
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

Occurrence: `result:e525ed74-f515-bb04-44d5-fa7ce6ff3178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1014–1032.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.forIn'_roc {α β : Type u} {m : Type u → Type v} {ps : PostShape}
    [Monad m] [WPMonad m ps]
    [LE α] [DecidableLE α] [LT α] [UpwardEnumerable α] [Rxc.IsAlwaysFinite α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α] [LawfulUpwardEnumerableLT α]
    {xs : Roc α} {init : β} {f : (a : α) → a ∈ xs → β → m (ForInStep β)}
    (inv : Invariant xs.toList β ps)
    (step : ∀ pref cur suff (h : xs.toList = pref ++ cur :: suff) b,
      Triple
        (f cur (by simp [← Roc.mem_toList_iff_mem, h]) b)
        (inv.1 (⟨pref, cur::suff, h.symm⟩, b))
        (fun r => match r with
          | .yield b' => inv.1 (⟨pref ++ [cur], suff, by simp [h]⟩, b')
          | .done b' => inv.1 (⟨xs.toList, [], by simp⟩, b'), inv.2)) :
    Triple (forIn' xs init f) (inv.1 (⟨[], xs.toList, rfl⟩, init)) (fun b => inv.1 (⟨xs.toList, [], by simp⟩, b), inv.2) := by
  simp only [Roc.forIn'_eq_forIn'_toList]
  apply Spec.forIn'_list inv step

open Std.PRange in
@[spec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean#L1014).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565e710ecdc3dcba2201dacdecda4b4cf2273efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
