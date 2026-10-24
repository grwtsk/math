# exists_eq_sum_perm_of_mem_doublyStochastic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd2ee5dd-19c1-ad5c-b68c-b8780b40b652",
  "kind": "lemma",
  "lexical_name": "exists_eq_sum_perm_of_mem_doublyStochastic",
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
  "slug": "exists-eq-sum-perm-of-mem-doublystochastic--d2232a54d99f454016dd17b8",
  "source": {
    "blob": "bda35c04023356ee90bf1c0b0457515a966b519c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 154,
    "path": "GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2232a54d99f454016dd17b8ee97c846848e5557b89461af74ab0aaf3889478e",
  "verification": {
    "reference": "docs/verification/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd2ee5dd-19c1-ad5c-b68c-b8780b40b652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eq_sum_perm_of_mem_doublyStochastic (hM : M ∈ doublyStochastic R n) :
    ∃ w : Equiv.Perm n → R, (∀ σ, 0 ≤ w σ) ∧ ∑ σ, w σ = 1 ∧ ∑ σ, w σ • σ.permMatrix R = M := by
  rcases isEmpty_or_nonempty n
  case inl => exact ⟨fun _ => 1, by simp, by simp, Subsingleton.elim _ _⟩
  obtain ⟨w, hw1, hw3⟩ := doublyStochastic_sum_perm_aux M 1 (by simp) ⟨M, hM, by simp⟩
  refine ⟨w, hw1, ?_, hw3⟩
  inhabit n
  have : ∑ j, ∑ σ : Equiv.Perm n, w σ • σ.permMatrix R default j = 1 := by
    simp only [← smul_apply (m := n), ← Finset.sum_apply, hw3]
    rw [sum_row_of_mem_doublyStochastic hM]
  simpa [sum_comm (γ := n), Equiv.toPEquiv_apply] using this

/--
**Birkhoff's theorem**
The set of doubly stochastic matrices is the convex hull of the permutation matrices.  Note
`exists_eq_sum_perm_of_mem_doublyStochastic` gives a convex weighting of each permutation matrix
directly.  To show `doublyStochastic n` is convex, use `convex_doublyStochastic`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Birkhoff/Variant08759583f927bda05876756ae89aa95ba1c2e16d54d2f5ad2f54eb9690d17fa4.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bda35c04023356ee90bf1c0b0457515a966b519c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
