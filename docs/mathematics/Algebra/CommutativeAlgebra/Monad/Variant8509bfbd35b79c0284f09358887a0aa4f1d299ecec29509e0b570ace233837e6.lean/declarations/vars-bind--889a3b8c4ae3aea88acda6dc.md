# vars_bind₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b33e053-e633-bad2-2bda-e65e4f75995e",
  "kind": "theorem",
  "lexical_name": "vars_bind₁",
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
  "slug": "vars-bind--889a3b8c4ae3aea88acda6dc",
  "source": {
    "blob": "feeb41dc87cd84c2626d95d2fa19ea930cce4df4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 301,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Monad/Variant8509bfbd35b79c0284f09358887a0aa4f1d299ecec29509e0b570ace233837e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:889a3b8c4ae3aea88acda6dc4629262d9e52c9a1e3fba08d793f2530b274550b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Monad/Variant8509bfbd35b79c0284f09358887a0aa4f1d299ecec29509e0b570ace233837e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b33e053-e633-bad2-2bda-e65e4f75995e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vars_bind₁ [DecidableEq τ] (f : σ → MvPolynomial τ R) (φ : MvPolynomial σ R) :
    (bind₁ f φ).vars ⊆ φ.vars.biUnion fun i => (f i).vars := by
  calc (bind₁ f φ).vars
    _ = (φ.support.sum fun x : σ →₀ ℕ => (bind₁ f) (monomial x (φ.coeff x))).vars := by
      rw [← map_sum, ← φ.as_sum]
    _ ≤ φ.support.biUnion fun i : σ →₀ ℕ => ((bind₁ f) (monomial i (φ.coeff i))).vars :=
      (vars_sum_subset _ _)
    _ = φ.support.biUnion fun d : σ →₀ ℕ => vars (C (φ.coeff d) * ∏ i ∈ d.support, f i ^ d i) := by
      simp only [bind₁_monomial]
    _ ≤ φ.support.biUnion fun d : σ →₀ ℕ => d.support.biUnion fun i => vars (f i) := ?_
    -- proof below
    _ ≤ φ.vars.biUnion fun i : σ => vars (f i) := ?_
    -- proof below
  · apply Finset.biUnion_mono
    intro d _hd
    calc
      vars (C (φ.coeff d) * ∏ i ∈ d.support, f i ^ d i) ≤
          (C (φ.coeff d)).vars ∪ (∏ i ∈ d.support, f i ^ d i).vars :=
        vars_mul _ _
      _ ≤ (∏ i ∈ d.support, f i ^ d i).vars := by
        simp only [Finset.empty_union, vars_C, Finset.Subset.refl]
      _ ≤ d.support.biUnion fun i : σ => vars (f i ^ d i) := vars_prod _
      _ ≤ d.support.biUnion fun i : σ => (f i).vars := ?_
    apply Finset.biUnion_mono
    intro i _hi
    apply vars_pow
  · intro j
    simp_rw [Finset.mem_biUnion]
    rintro ⟨d, hd, ⟨i, hi, hj⟩⟩
    exact ⟨i, (mem_vars_iff_mem_support _).mpr ⟨d, hd, hi⟩, hj⟩

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Monad/Variant8509bfbd35b79c0284f09358887a0aa4f1d299ecec29509e0b570ace233837e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Monad/Variant8509bfbd35b79c0284f09358887a0aa4f1d299ecec29509e0b570ace233837e6.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feeb41dc87cd84c2626d95d2fa19ea930cce4df4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
