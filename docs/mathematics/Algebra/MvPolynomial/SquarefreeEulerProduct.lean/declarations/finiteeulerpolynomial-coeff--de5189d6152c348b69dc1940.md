# finiteEulerPolynomial_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e49195f804e0f12ecfbf2059230230d3df0b91b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6872c003-bf81-e25a-8a4d-f1c35d769242",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abe65810-20b4-7c06-055e-323b8bfc81c3",
  "kind": "theorem",
  "lexical_name": "finiteEulerPolynomial_coeff",
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
  "slug": "finiteeulerpolynomial-coeff--de5189d6152c348b69dc1940",
  "source": {
    "blob": "e49195f804e0f12ecfbf2059230230d3df0b91b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 70,
    "path": "GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de5189d6152c348b69dc19403817ecd26cd160880cc1ff09091751d83b50e5cd",
  "verification": {
    "reference": "docs/verification/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abe65810-20b4-7c06-055e-323b8bfc81c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteEulerPolynomial_coeff (P : Finset ℕ) (ν : ℕ →₀ ℕ) :
    coeff ν (finiteEulerPolynomial P) =
      if ν.support ⊆ P ∧ (∀ p, ν p ≤ 1) then (-1 : ℤ) ^ ν.support.card else 0 := by
  classical
  rw [finiteEulerPolynomial_coeff_sum]
  by_cases hν : ν.support ⊆ P ∧ (∀ p, ν p ≤ 1)
  · rw [if_pos hν]
    have hm : ν.support ∈ P.powerset := Finset.mem_powerset.mpr hν.1
    rw [Finset.sum_eq_single ν.support]
    · rw [if_pos ((exponentMask_eq_iff ν ν.support).mpr ⟨rfl, hν.2⟩)]
    · intro U _hU hne
      have hn : ν ≠ exponentMask U := by
        intro h
        exact hne ((exponentMask_eq_iff ν U).mp h).1.symm
      simp [hn]
    · exact fun h => False.elim (h hm)
  · rw [if_neg hν]
    apply Finset.sum_eq_zero
    intro U hU
    have hn : ν ≠ exponentMask U := by
      intro h
      obtain ⟨hs, hv⟩ := (exponentMask_eq_iff ν U).mp h
      apply hν
      rw [hs]
      exact ⟨Finset.mem_powerset.mp hU, hv⟩
    simp [hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49195f804e0f12ecfbf2059230230d3df0b91b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
