# Iter.step_flatMapAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4d29461-008f-1b3d-3567-c72117006c28",
  "kind": "theorem",
  "lexical_name": "Iter.step_flatMapAfter",
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
  "slug": "iter-step-flatmapafter--05f074bf519eafee697f77ff",
  "source": {
    "blob": "3bf18efa35e418de31294db95b40bbfce5ea5f4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05f074bf519eafee697f77ffe1fc38f9b44dd89380505125d42017b3b7397f17",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4d29461-008f-1b3d-3567-c72117006c28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem Iter.step_flatMapAfter {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} [Iterator α Id β] [Iterator α₂ Id γ]
    {f : β → Iter (α := α₂) γ} {it₁ : Iter (α := α) β} {it₂ : Option (Iter (α := α₂) γ)} :
  (it₁.flatMapAfter f it₂).step = (match it₂ with
    | none =>
      match it₁.step with
      | .yield it₁' b h =>
        .skip (it₁'.flatMapAfter f (some (f b))) (.outerYield_flatMap_pure h)
      | .skip it₁' h => .skip (it₁'.flatMapAfter f none) (.outerSkip_flatMap_pure h)
      | .done h => .done (.outerDone_flatMap_pure h)
    | some it₂ =>
      match it₂.step with
      | .yield it₂' out h => .yield (it₁.flatMapAfter f (some it₂')) out (.innerYield_flatMap_pure h)
      | .skip it₂' h => .skip (it₁.flatMapAfter f (some it₂')) (.innerSkip_flatMap_pure h)
      | .done h => .skip (it₁.flatMapAfter f none) (.innerDone_flatMap_pure h)) := by
  simp only [flatMapAfter, step, toIterM_toIter, IterM.step_flatMapAfter]
  cases it₂
  · simp only [Option.map_eq_map, Option.map_none, Id.run_bind, Option.map_some]
    cases it₁.toIterM.step.run.inflate using PlausibleIterStep.casesOn <;> simp
  · rename_i it₂
    simp only [Option.map_eq_map, Option.map_some, Id.run_bind, Option.map_none]
    cases it₂.toIterM.step.run.inflate using PlausibleIterStep.casesOn <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bf18efa35e418de31294db95b40bbfce5ea5f4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
