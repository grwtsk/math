# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce7d2326e284726b70a341262842cbb627565894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c7fe50e-97d0-96e2-038c-b580ff1c54d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0181e40e-4ec9-b0d8-3bae-b807f6ef14e2",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--0d4414ee69b9c1d2e6e9f0e6",
  "source": {
    "blob": "ce7d2326e284726b70a341262842cbb627565894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 233,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d4414ee69b9c1d2e6e9f0e687d9460bfc3ca085b4bc400cc6f36a2ffaac8146",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0181e40e-4ec9-b0d8-3bae-b807f6ef14e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem induction_on {M : R[T;T⁻¹] → Prop} (p : R[T;T⁻¹]) (h_C : ∀ a, M (C a))
    (h_add : ∀ {p q}, M p → M q → M (p + q))
    (h_C_mul_T : ∀ (n : ℕ) (a : R), M (C a * T n) → M (C a * T (n + 1)))
    (h_C_mul_T_Z : ∀ (n : ℕ) (a : R), M (C a * T (-n)) → M (C a * T (-n - 1))) : M p := by
  have A : ∀ {n : ℤ} {a : R}, M (C a * T n) := by
    intro n a
    refine Int.induction_on n ?_ ?_ ?_
    · simpa only [T_zero, mul_one] using h_C a
    · exact fun m => h_C_mul_T m a
    · exact fun m => h_C_mul_T_Z m a
  have B : ∀ s : Finset ℤ, M (s.sum fun n : ℤ => C (p.toFun n) * T n) := by
    apply Finset.induction
    · convert h_C 0
      simp only [Finset.sum_empty, map_zero]
    · intro n s ns ih
      rw [Finset.sum_insert ns]
      exact h_add A ih
  convert B p.support
  ext a
  simp_rw [← single_eq_C_mul_T]
  -- Porting note: did not make progress in `simp_rw`
  rw [Finset.sum_apply']
  simp_rw [Finsupp.single_apply, Finset.sum_ite_eq']
  split_ifs with h
  · rfl
  · exact Finsupp.notMem_support_iff.mp h

/-- To prove something about Laurent polynomials, it suffices to show that
* the condition is closed under taking sums, and
* it holds for monomials.
-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variant95810634188bd449524c2686a60b439a2570681a2e5d86d57ba45a9841b14388.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7d2326e284726b70a341262842cbb627565894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
