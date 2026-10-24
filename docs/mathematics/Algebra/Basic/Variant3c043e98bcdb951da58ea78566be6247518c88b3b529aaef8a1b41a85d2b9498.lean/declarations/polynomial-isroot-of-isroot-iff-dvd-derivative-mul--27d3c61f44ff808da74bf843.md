# Polynomial.isRoot_of_isRoot_iff_dvd_derivative_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "acb56c60131de223b4dc6123ed343581caa2254e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e34918f2-4ea5-0bd5-563d-89f14a930c70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:249e661c-f9de-2809-2ea2-3122d1ed68cf",
  "kind": "theorem",
  "lexical_name": "Polynomial.isRoot_of_isRoot_iff_dvd_derivative_mul",
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
  "slug": "polynomial-isroot-of-isroot-iff-dvd-derivative-mul--27d3c61f44ff808da74bf843",
  "source": {
    "blob": "acb56c60131de223b4dc6123ed343581caa2254e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 488,
    "path": "GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d3c61f44ff808da74bf843aa56913ac0c0b2de63e03d5988b4e9361342feed",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249e661c-f9de-2809-2ea2-3122d1ed68cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.isRoot_of_isRoot_iff_dvd_derivative_mul {K : Type*} [Field K]
    [IsAlgClosed K] [CharZero K] {f g : K[X]} (hf0 : f ≠ 0) :
    (∀ x, IsRoot f x → IsRoot g x) ↔ f ∣ f.derivative * g := by
  refine ⟨?_, isRoot_of_isRoot_of_dvd_derivative_mul hf0⟩
  by_cases hg0 : g = 0
  · simp [hg0]
  by_cases hdf0 : derivative f = 0
  · rw [eq_C_of_derivative_eq_zero hdf0]
    simp only [eval_C, derivative_C, zero_mul, dvd_zero, implies_true]
  have hdg :  f.derivative * g ≠ 0 := mul_ne_zero hdf0 hg0
  classical rw [Splits.dvd_iff_roots_le_roots (IsAlgClosed.splits f) hf0 hdg, Multiset.le_iff_count]
  simp only [count_roots, rootMultiplicity_mul hdg]
  refine forall_imp fun a => ?_
  by_cases haf : f.eval a = 0
  · have h0 : 0 < f.rootMultiplicity a := (rootMultiplicity_pos hf0).2 haf
    rw [derivative_rootMultiplicity_of_root haf]
    intro h
    calc rootMultiplicity a f
        = rootMultiplicity a f - 1 + 1 := (Nat.sub_add_cancel (Nat.succ_le_iff.1 h0)).symm
      _ ≤ rootMultiplicity a f - 1 + rootMultiplicity a g := add_le_add le_rfl (Nat.succ_le_iff.1
        ((rootMultiplicity_pos hg0).2 (h haf)))
  · simp [haf, rootMultiplicity_eq_zero haf]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb56c60131de223b4dc6123ed343581caa2254e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
