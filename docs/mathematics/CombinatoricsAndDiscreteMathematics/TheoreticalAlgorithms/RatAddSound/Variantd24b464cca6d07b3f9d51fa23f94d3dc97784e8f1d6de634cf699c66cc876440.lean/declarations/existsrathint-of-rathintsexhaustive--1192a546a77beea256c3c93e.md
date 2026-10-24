# existsRatHint_of_ratHintsExhaustive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a842a2eb-79ce-c903-46af-853552230450",
  "kind": "theorem",
  "lexical_name": "existsRatHint_of_ratHintsExhaustive",
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
  "slug": "existsrathint-of-rathintsexhaustive--1192a546a77beea256c3c93e",
  "source": {
    "blob": "0ba143a5e2f63cd00abe496a1a92efba4f69e737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 413,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1192a546a77beea256c3c93e0e12e2f2d45f4f5e7a7304985ecea2cc15a1c8d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a842a2eb-79ce-c903-46af-853552230450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsRatHint_of_ratHintsExhaustive {n : Nat} (f : DefaultFormula n)
    (f_readyForRatAdd : ReadyForRatAdd f) (pivot : Literal (PosFin n))
    (ratHints : Array (Nat × Array Nat))
    (ratHintsExhaustive_eq_true : ratHintsExhaustive f pivot ratHints = true) (c' : DefaultClause n)
    (c'_in_f : c' ∈ toList f) (negPivot_in_c' : Literal.negate pivot ∈ Clause.toList c') :
    ∃ i : Fin ratHints.size, f.clauses[ratHints[i].1]! = some c' := by
  simp only [toList, f_readyForRatAdd.2.1, List.toList_toArray, List.map, List.append_nil, f_readyForRatAdd.1,
    List.mem_filterMap, id_eq, exists_eq_right] at c'_in_f
  rw [List.mem_iff_getElem] at c'_in_f
  rcases c'_in_f with ⟨i, hi, c'_in_f⟩
  simp only [ratHintsExhaustive, getRatClauseIndices] at ratHintsExhaustive_eq_true
  have i_in_bounds : i < Array.size (Array.range (Array.size f.clauses)) := by grind
  have i_lt_f_clauses_size : i < f.clauses.size := by grind
  have h : i ∈ (ratHints.map (fun x => x.1)).toList := by
    rw [← of_decide_eq_true ratHintsExhaustive_eq_true]
    have i_eq_range_i : i = (Array.range f.clauses.size)[i]'i_in_bounds := by grind
    rw [i_eq_range_i]
    rw [Array.mem_toList_iff]
    rw [Array.mem_filter]
    constructor
    · grind
    · split
      · grind
      · simp [Clause.toList] at negPivot_in_c'
        grind [contains_iff]
  rcases List.get_of_mem h with ⟨j, h'⟩
  have j_in_bounds : j < ratHints.size := by
    have j_property := j.2
    grind
  exists ⟨j.1, j_in_bounds⟩
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ba143a5e2f63cd00abe496a1a92efba4f69e737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
