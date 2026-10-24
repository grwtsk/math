# lifts_and_degree_eq_and_monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b67587b-9de7-72d0-18fe-d973bbc227c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74ff597d-cedb-faa4-e792-33bb38cc4860",
  "kind": "theorem",
  "lexical_name": "lifts_and_degree_eq_and_monic",
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
  "slug": "lifts-and-degree-eq-and-monic--ce3aea58a99be8fe466eec97",
  "source": {
    "blob": "27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 211,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3aea58a99be8fe466eec97336ebe8c9e1b8cc085a1b2cd3a2a2afbba3b6131",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74ff597d-cedb-faa4-e792-33bb38cc4860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lifts_and_degree_eq_and_monic [Nontrivial S] {p : S[X]} (hlifts : p ∈ lifts f)
    (hp : p.Monic) : ∃ q : R[X], map f q = p ∧ q.degree = p.degree ∧ q.Monic := by
  cases' subsingleton_or_nontrivial R with hR hR
  · obtain ⟨q, hq⟩ := mem_lifts_and_degree_eq hlifts
    exact ⟨q, hq.1, hq.2, monic_of_subsingleton _⟩
  have H : erase p.natDegree p + X ^ p.natDegree = p := by
    simpa only [hp.leadingCoeff, C_1, one_mul, eraseLead] using eraseLead_add_C_mul_X_pow p
  by_cases h0 : erase p.natDegree p = 0
  · rw [← H, h0, zero_add]
    refine' ⟨X ^ p.natDegree, _, _, monic_X_pow p.natDegree⟩
    · rw [Polynomial.map_pow, map_X]
    · rw [degree_X_pow, degree_X_pow]
  obtain ⟨q, hq⟩ := mem_lifts_and_degree_eq (erase_mem_lifts p.natDegree hlifts)
  have p_neq_0 : p ≠ 0 := by intro hp; apply h0; rw [hp]; simp only [natDegree_zero, erase_zero]
  have hdeg : q.degree < (X ^ p.natDegree).degree := by
    rw [@degree_X_pow R, hq.2, ←degree_eq_natDegree p_neq_0]
    exact degree_erase_lt p_neq_0
  refine' ⟨q + X ^ p.natDegree, _, _, (monic_X_pow _).add_of_right hdeg⟩
  · rw [Polynomial.map_add, hq.1, Polynomial.map_pow, map_X, H]
  · rw [degree_add_eq_right_of_degree_lt hdeg, degree_X_pow, degree_eq_natDegree hp.ne_zero]
#align polynomial.lifts_and_degree_eq_and_monic Polynomial.lifts_and_degree_eq_and_monic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
