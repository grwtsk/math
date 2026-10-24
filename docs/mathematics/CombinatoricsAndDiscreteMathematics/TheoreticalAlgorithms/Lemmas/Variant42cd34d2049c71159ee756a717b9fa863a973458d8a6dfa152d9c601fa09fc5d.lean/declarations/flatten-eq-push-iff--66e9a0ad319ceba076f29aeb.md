# flatten_eq_push_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d787ae0f-030e-ac54-93c3-b3a96e7b5cad",
  "kind": "theorem",
  "lexical_name": "flatten_eq_push_iff",
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
  "slug": "flatten-eq-push-iff--66e9a0ad319ceba076f29aeb",
  "source": {
    "blob": "1812a095ab5e84d89a8d03a9f40790d49e3e697d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2259,
    "line": 2230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66e9a0ad319ceba076f29aeb24f64140dda44ea098deedac69082ce48c7a0707",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d787ae0f-030e-ac54-93c3-b3a96e7b5cad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2230–2259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flatten_eq_push_iff {xss : Array (Array α)} {ys : Array α} {y : α} :
    xss.flatten = ys.push y ↔
      ∃ (as : Array (Array α)) (bs : Array α) (cs : Array (Array α)),
        xss = as.push (bs.push y) ++ cs ∧ (∀ xs, xs ∈ cs → xs = #[]) ∧ ys = as.flatten ++ bs := by
  induction xss using array₂_induction with
  | of xs =>
    rcases ys with ⟨ys⟩
    rw [flatten_toArray_map_toArray, List.push_toArray, mk.injEq, List.flatten_eq_append_iff]
    constructor
    · rintro (⟨as, bs, rfl, rfl, h⟩ | ⟨as, bs, c, cs, ds, rfl, rfl, h⟩)
      · rw [List.singleton_eq_flatten_iff] at h
        obtain ⟨xs, ys, rfl, h₁, h₂⟩ := h
        exact ⟨((as ++ xs).map List.toArray).toArray, #[], (ys.map List.toArray).toArray, by simp,
          by simpa using h₂, by rw [flatten_toArray_map_toArray]; simpa⟩
      · rw [List.singleton_eq_append_iff] at h
        obtain (⟨h₁, h₂⟩ | ⟨h₁, h₂⟩) := h
        · simp at h₁
        · simp at h₁ h₂
          obtain ⟨rfl, rfl⟩ := h₁
          exact ⟨(as.map List.toArray).toArray, bs.toArray, (ds.map List.toArray).toArray, by simpa⟩
    · rintro ⟨as, bs, cs, h₁, h₂, h₃⟩
      replace h₁ := congrArg (List.map Array.toList) (congrArg Array.toList h₁)
      simp [Function.comp_def] at h₁
      subst h₁
      replace h₃ := congrArg Array.toList h₃
      simp at h₃
      subst h₃
      right
      exact ⟨(as.map Array.toList).toList, bs.toList, y, [], (cs.map Array.toList).toList, by simpa⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean#L2230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1812a095ab5e84d89a8d03a9f40790d49e3e697d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
