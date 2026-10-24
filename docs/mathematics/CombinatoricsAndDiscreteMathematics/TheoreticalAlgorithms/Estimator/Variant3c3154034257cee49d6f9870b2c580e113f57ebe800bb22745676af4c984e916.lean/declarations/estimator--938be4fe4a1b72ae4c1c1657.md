# estimator'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae8bb1f7a43f67a1e66c36495e9e2260ac263e76195e041b0c615ab6b84bc37c",
  "kind": "instance",
  "lexical_name": "estimator'",
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
  "slug": "estimator--938be4fe4a1b72ae4c1c1657",
  "source": {
    "blob": "9c725744c2fa6ded06c6f02cd903687a0dd56185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:938be4fe4a1b72ae4c1c165725b4033d865a50ca67e5a96df4e5f57a992c6602",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae8bb1f7a43f67a1e66c36495e9e2260ac263e76195e041b0c615ab6b84bc37c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance estimator' :
    Estimator (Thunk.mk fun _ => (levenshtein C xs ys, ys.length))
      (LevenshteinEstimator' C xs ys) where
  bound_le e := match e.pre_rev, e.split, e.bound_eq with
  | [], split, eq => by
    simp only [List.reverse_nil, List.nil_append] at split
    rw [e.distances_eq] at eq
    simp only [List.getElem_eq_get] at eq
    rw [split] at eq
    exact eq.le
  | y :: t, split, eq => by
    rw [e.distances_eq] at eq
    simp only at eq
    dsimp [EstimatorData.bound]
    rw [eq]
    simp only [←split]
    constructor
    · simp only [List.minimum_of_length_pos_le_iff]
      exact suffixLevenshtein_minimum_le_levenshtein_append _ _ _
    · exact List.length_le_of_sublist (List.sublist_append_right _ _)
  improve_spec e := by
    dsimp [EstimatorData.improve]
    match e.pre_rev, e.split, e.bound_eq, e.distances_eq with
    | [], split, eq, _ =>
      simp only [List.reverse_nil, List.nil_append] at split
      rw [e.distances_eq] at eq
      simp only [List.getElem_eq_get] at eq
      rw [split] at eq
      exact eq
    | [y], split, b_eq, d_eq =>
      simp only [EstimatorData.bound, Prod.lt_iff, List.reverse_nil, List.nil_append]
      right
      have b_eq : e.bound = (List.minimum_of_length_pos _, List.length e.suff)
      · simpa using b_eq
      rw [b_eq]
      constructor
      · refine (?_ : _ ≤ _).trans (List.minimum_of_length_pos_le_getElem _)
        simp only [List.minimum_of_length_pos_le_iff, List.coe_minimum_of_length_pos, d_eq]
        apply le_suffixLevenshtein_cons_minimum
      · simp [←split]
    | y₁ :: y₂ :: t, split, b_eq, d_eq =>
      simp only [EstimatorData.bound, Prod.lt_iff]
      right
      have b_eq : e.bound = (List.minimum_of_length_pos _, List.length e.suff)
      · simpa using b_eq
      rw [b_eq]
      constructor
      · simp only [d_eq, List.minimum_of_length_pos_le_iff, List.coe_minimum_of_length_pos]
        apply le_suffixLevenshtein_cons_minimum
      · exact Nat.lt.base _

/-- An estimator for Levenshtein distances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant3c3154034257cee49d6f9870b2c580e113f57ebe800bb22745676af4c984e916.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c725744c2fa6ded06c6f02cd903687a0dd56185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
