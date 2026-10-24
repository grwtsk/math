# mem_lifts_and_degree_eq

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
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e8b929a-ff83-2468-b8ce-9ca113d14571",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36fea38b-b7a6-6600-48c4-a539863889aa",
  "kind": "theorem",
  "lexical_name": "mem_lifts_and_degree_eq",
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
  "slug": "mem-lifts-and-degree-eq--b911744e43e1a01547a8cc95",
  "source": {
    "blob": "27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 166,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b911744e43e1a01547a8cc958bcf03e22272ec7f9d4f2f06ed1bffcb309327d9",
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

Occurrence: `result:36fea38b-b7a6-6600-48c4-a539863889aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_lifts_and_degree_eq {p : S[X]} (hlifts : p ∈ lifts f) :
    ∃ q : R[X], map f q = p ∧ q.degree = p.degree := by
  generalize hd : p.natDegree = d
  revert hd p
  induction' d using Nat.strong_induction_on with n hn
  intros p hlifts hdeg
  by_cases erase_zero : p.eraseLead = 0
  · rw [← eraseLead_add_monomial_natDegree_leadingCoeff p, erase_zero, zero_add, leadingCoeff]
    exact
      monomial_mem_lifts_and_degree_eq
        (monomial_mem_lifts p.natDegree ((lifts_iff_coeff_lifts p).1 hlifts p.natDegree))
  have deg_erase := Or.resolve_right (eraseLead_natDegree_lt_or_eraseLead_eq_zero p) erase_zero
  have pzero : p ≠ 0 := by
    intro habs
    exfalso
    rw [habs, eraseLead_zero, eq_self_iff_true, not_true] at erase_zero
    exact erase_zero
  have lead_zero : p.coeff p.natDegree ≠ 0 := by
    rw [← leadingCoeff, Ne.def, leadingCoeff_eq_zero]; exact pzero
  obtain ⟨lead, hlead⟩ :=
    monomial_mem_lifts_and_degree_eq
      (monomial_mem_lifts p.natDegree ((lifts_iff_coeff_lifts p).1 hlifts p.natDegree))
  have deg_lead : lead.degree = p.natDegree := by
    rw [hlead.2, ← C_mul_X_pow_eq_monomial, degree_C_mul_X_pow p.natDegree lead_zero]
  rw [hdeg] at deg_erase
  obtain ⟨erase, herase⟩ :=
    hn p.eraseLead.natDegree deg_erase (erase_mem_lifts p.natDegree hlifts)
      (refl p.eraseLead.natDegree)
  use erase + lead
  constructor
  · simp only [hlead, herase, Polynomial.map_add]
    rw [←eraseLead, ←leadingCoeff]
    rw [eraseLead_add_monomial_natDegree_leadingCoeff p]
  rw [degree_eq_natDegree pzero, ←deg_lead]
  apply degree_add_eq_right_of_degree_lt
  rw [herase.2, deg_lead, ←degree_eq_natDegree pzero]
  exact degree_erase_lt pzero
#align polynomial.mem_lifts_and_degree_eq Polynomial.mem_lifts_and_degree_eq

end LiftDeg

section Monic

/-- A monic polynomial lifts if and only if it can be lifted to a monic polynomial
of the same degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
