# FiniteType.of_finiteType_tensorProduct_of_faithfullyFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ad2d5d0-7f87-a739-b0d4-8c9695778e18",
  "kind": "lemma",
  "lexical_name": "FiniteType.of_finiteType_tensorProduct_of_faithfullyFlat",
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
  "slug": "finitetype-of-finitetype-tensorproduct-of-faithfullyflat--223c223806a737d1e56ad0ed",
  "source": {
    "blob": "62b46ddb162a450d7f99813fbfef47b9d9d3a6a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:223c223806a737d1e56ad0ed856741effebde15f68dff0cfe38313f684e097aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ad2d5d0-7f87-a739-b0d4-8c9695778e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FiniteType.of_finiteType_tensorProduct_of_faithfullyFlat
    [Module.FaithfullyFlat R T] [Algebra.FiniteType T (T ⊗[R] S)] :
    Algebra.FiniteType R S := by
  obtain ⟨s, hs⟩ := Algebra.FiniteType.out (R := T) (A := T ⊗[R] S)
  have (x : s) := TensorProduct.exists_sum_tmul_eq x.1
  choose k t m h using this
  let f : MvPolynomial (Σ x : s, Fin (k x)) R →ₐ[R] S := MvPolynomial.aeval (fun ⟨x, i⟩ ↦ m x i)
  apply Algebra.FiniteType.of_surjective f
  have hf : Function.Surjective (Algebra.TensorProduct.map (.id T T) f) := by
    rw [← AlgHom.range_eq_top, _root_.eq_top_iff, ← hs, adjoin_le_iff]
    intro x hx
    let i : s := ⟨x, hx⟩
    use ∑ (j : Fin (k i)), t i j ⊗ₜ MvPolynomial.X ⟨i, j⟩
    simp [f, ← h, i]
  exact (Module.FaithfullyFlat.lTensor_surjective_iff_surjective _ T _).mp hf

attribute [local instance] Algebra.TensorProduct.rightAlgebra in
/-- If `T ⊗[R] S` is of finite presentation over `T` and `T` is `R`-faithfully flat,
then `S` is of finite presentation over `R` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b46ddb162a450d7f99813fbfef47b9d9d3a6a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
