# monomial_mem_lifts_and_degree_eq

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
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df607b28-3765-6ead-5e76-5a4c406dfeed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44340d69-0b09-6b86-5b0f-c0065f96e98d",
  "kind": "theorem",
  "lexical_name": "monomial_mem_lifts_and_degree_eq",
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
  "slug": "monomial-mem-lifts-and-degree-eq--b139aaf97d4fecd1b08ccb98",
  "source": {
    "blob": "27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 141,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b139aaf97d4fecd1b08ccb98fcc126e4ff2ee4e0f21bfbf69194fd7eb21342be",
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

Occurrence: `result:44340d69-0b09-6b86-5b0f-c0065f96e98d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monomial_mem_lifts_and_degree_eq {s : S} {n : ℕ} (hl : monomial n s ∈ lifts f) :
    ∃ q : R[X], map f q = monomial n s ∧ q.degree = (monomial n s).degree := by
  by_cases hzero : s = 0
  · use 0
    simp only [hzero, degree_zero, eq_self_iff_true, and_self_iff, monomial_zero_right,
      Polynomial.map_zero]
  rw [lifts_iff_set_range] at hl
  obtain ⟨q, hq⟩ := hl
  replace hq := (ext_iff.1 hq) n
  have hcoeff : f (q.coeff n) = s := by
    simp [coeff_monomial] at hq
    exact hq
  use monomial n (q.coeff n)
  constructor
  · simp only [hcoeff, map_monomial]
  have hqzero : q.coeff n ≠ 0 := by
    intro habs
    simp only [habs, RingHom.map_zero] at hcoeff
    exact hzero hcoeff.symm
  rw [← C_mul_X_pow_eq_monomial]
  rw [← C_mul_X_pow_eq_monomial]
  simp only [hzero, hqzero, Ne.def, not_false_iff, degree_C_mul_X_pow]
#align polynomial.monomial_mem_lifts_and_degree_eq Polynomial.monomial_mem_lifts_and_degree_eq

/-- A polynomial lifts if and only if it can be lifted to a polynomial of the same degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
