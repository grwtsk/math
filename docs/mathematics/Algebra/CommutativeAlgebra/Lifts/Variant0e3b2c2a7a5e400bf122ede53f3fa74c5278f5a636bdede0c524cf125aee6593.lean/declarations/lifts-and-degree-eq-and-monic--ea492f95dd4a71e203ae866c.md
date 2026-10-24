# lifts_and_degree_eq_and_monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5c764f4-3672-bf9c-0eb3-3a8373bccb96",
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
  "slug": "lifts-and-degree-eq-and-monic--ea492f95dd4a71e203ae866c",
  "source": {
    "blob": "3eecab8543616bd997e1491786c5adb6bdcc6c65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 219,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea492f95dd4a71e203ae866c65c5295d358749d5e682c396447348911de736e8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5c764f4-3672-bf9c-0eb3-3a8373bccb96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–240.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eecab8543616bd997e1491786c5adb6bdcc6c65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
