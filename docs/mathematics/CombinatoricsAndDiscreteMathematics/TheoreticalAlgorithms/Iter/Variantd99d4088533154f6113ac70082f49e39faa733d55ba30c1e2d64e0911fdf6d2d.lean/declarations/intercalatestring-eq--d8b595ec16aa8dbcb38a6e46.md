# intercalateString_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db8d5530-f8df-7b46-3290-40145737c852",
  "kind": "theorem",
  "lexical_name": "intercalateString_eq",
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
  "slug": "intercalatestring-eq--d8b595ec16aa8dbcb38a6e46",
  "source": {
    "blob": "dc557d73da341ba3449480bda6f09e7dece8a448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8b595ec16aa8dbcb38a6e462cba21b08bb81d45bb7bc21865daea228fee918b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8d5530-f8df-7b46-3290-40145737c852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem intercalateString_eq {α β : Type} [Std.Iterator α Id β] [Std.Iterators.Finite α Id]
    [ToString β] {s : String.Slice} {it : Std.Iter (α := α) β} :
    it.intercalateString s = s.copy.intercalate (it.toList.map toString) := by
  simp only [intercalateString, String.appendSlice_eq, ← foldl_toList, toList_map]
  generalize s.copy = s
  suffices ∀ (l m : List String),
      (l.foldl (init := if m = [] then none else some (s.intercalate m))
        (fun | none, sl => some sl | some str, sl => some (str ++ s ++ sl))).getD ""
        = s.intercalate (m ++ l) by
    simpa [-foldl_toList] using! this (it.toList.map toString) []
  intro l m
  induction l generalizing m with
  | nil => cases m <;> simp
  | cons hd tl ih =>
    rw [List.append_cons, ← ih, List.foldl_cons]
    congr
    simp only [List.append_eq_nil_iff, List.cons_ne_self, and_false, ↓reduceIte]
    match m with
    | [] => simp
    | x::xs =>
      simp only [List.cons_append, Option.some.injEq, reduceCtorEq, ↓reduceIte]
      rw [← List.cons_append, String.intercalate_append_of_ne_nil (by simp) (by simp),
        String.intercalate_singleton]

end Std.Iter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iter/Variantd99d4088533154f6113ac70082f49e39faa733d55ba30c1e2d64e0911fdf6d2d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc557d73da341ba3449480bda6f09e7dece8a448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
