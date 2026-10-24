# exists_factorization_of_comp_eq_zero_of_free_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ef44901-877a-81e1-32ec-eacdc696b24e",
  "kind": "theorem",
  "lexical_name": "exists_factorization_of_comp_eq_zero_of_free_aux",
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
  "slug": "exists-factorization-of-comp-eq-zero-of-free-aux--6c97192bf5fa8c0318b2222d",
  "source": {
    "blob": "64b398043cd825681679fecfc844744aca33de98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 238,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c97192bf5fa8c0318b2222dd13ebe09f6b2d6db7c54d4c00691be2efe2eddef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ef44901-877a-81e1-32ec-eacdc696b24e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_factorization_of_comp_eq_zero_of_free_aux [Flat R M] {K : Type*} {n : ℕ}
    [AddCommGroup K] [Module R K] [Module.Finite R K] {f : K →ₗ[R] Fin n →₀ R}
    {x : (Fin n →₀ R) →ₗ[R] M} (h : x ∘ₗ f = 0) :
    ∃ (k : ℕ) (a : (Fin n →₀ R) →ₗ[R] (Fin k →₀ R)) (y : (Fin k →₀ R) →ₗ[R] M),
      x = y ∘ₗ a ∧ a ∘ₗ f = 0 := by
  have (K' : Submodule R K) (hK' : K'.FG) : ∃ (k : ℕ) (a : (Fin n →₀ R) →ₗ[R] (Fin k →₀ R))
      (y : (Fin k →₀ R) →ₗ[R] M), x = y ∘ₗ a ∧ K' ≤ LinearMap.ker (a ∘ₗ f) := by
    revert n
    apply Submodule.fg_induction (N := K') (hN := hK')
    · intro k n f x hfx
      have : x (f k) = 0 := by simpa using LinearMap.congr_fun hfx k
      simpa using exists_factorization_of_apply_eq_zero_of_free this
    · intro K₁ K₂ ih₁ ih₂ n f x hfx
      obtain ⟨k₁, a₁, y₁, rfl, ha₁⟩ := ih₁ hfx
      have : y₁ ∘ₗ (a₁ ∘ₗ f) = 0 := by rw [← comp_assoc, hfx]
      obtain ⟨k₂, a₂, y₂, rfl, ha₂⟩ := ih₂ this
      use k₂, a₂ ∘ₗ a₁, y₂
      simp_rw [comp_assoc]
      exact ⟨trivial, sup_le (ha₁.trans (ker_le_ker_comp _ _)) ha₂⟩
  convert this ⊤ Finite.fg_top
  simp only [top_le_iff, ker_eq_top]

/-- Let $M$ be a flat module. Let $K$ and $N$ be finite $R$-modules with $N$
free, and let $f \colon K \to N$ and $x \colon N \to M$ be linear maps such that
$x \circ f = 0$. Then there exist a finite free module $R^k$ and linear maps
$a \colon N \to R^k$ and $y \colon R^k \to M$ such that $x = y \circ a$ and
$a \circ f = 0$. -/
@[stacks 058D "(1) → (4)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b398043cd825681679fecfc844744aca33de98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
