# union_support_maximal_linearIndependent_eq_range_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d314c2b9-634f-58d8-5d15-510df40725e2",
  "kind": "theorem",
  "lexical_name": "union_support_maximal_linearIndependent_eq_range_basis",
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
  "slug": "union-support-maximal-linearindependent-eq-range-basis--6fe11beaa7b602171ed5b919",
  "source": {
    "blob": "9bfe78f3d5470100b0048f87560d9cf2cff6cbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fe11beaa7b602171ed5b9196ed2ac838fec41a693641aa1f147d2dcafec58a7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d314c2b9-634f-58d8-5d15-510df40725e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_support_maximal_linearIndependent_eq_range_basis {ι : Type w} (b : Basis ι R M)
    {κ : Type w'} (v : κ → M) (ind : LinearIndependent R v) (m : ind.Maximal) :
    ⋃ k, ((b.repr (v k)).support : Set ι) = Set.univ := by
  -- If that's not the case,
  by_contra h
  simp only [← Ne.eq_def, ne_univ_iff_exists_notMem, mem_iUnion, not_exists_not,
    Finsupp.mem_support_iff, Finset.mem_coe] at h
  -- We have some basis element `b i` which is not in the support of any of the `v k`.
  obtain ⟨i, w⟩ := h
  have repr_eq_zero (l) : b.repr (linearCombination R v l) i = 0 := by
    simp [linearCombination_apply, Finsupp.sum, w]
  -- Using this, we'll construct a linearly independent family strictly larger than `v`,
  -- by also using this `b i`.
  let v' (o : Option κ) : M := o.elim (b i) v
  have r : range v ⊆ range v' := by rintro - ⟨k, rfl⟩; exact ⟨some k, rfl⟩
  have r' : b i ∉ range v := fun ⟨k, p⟩ ↦ by simpa [w] using congr(b.repr $p i)
  have r'' : range v ≠ range v' := (r' <| · ▸ ⟨none, rfl⟩)
  -- The key step in the proof is checking that this strictly larger family is linearly independent.
  have i' : LinearIndepOn R id (range v') := by
    apply LinearIndependent.linearIndepOn_id
    rw [linearIndependent_iffₛ]
    intro l l' z
    simp_rw [linearCombination_option, v', Option.elim'] at z
    change _ + linearCombination R v l.some = _ + linearCombination R v l'.some at z
    -- We have some equality between linear combinations of `b i` and the `v k`,
    -- and want to show the coefficients are equal.
    ext (_ | a)
    -- We'll first show the coefficient of `b i` is zero,
    -- by expressing the `v k` in the basis `b`, and using that the `v k` have no `b i` term.
    · simpa [repr_eq_zero] using congr(b.repr $z i)
    -- All the other coefficients are also equal, because `v` is linear independent,
    -- by comparing the coefficients in the basis `b`.
    have l₁ : l.some = l'.some := ind <| b.repr.injective <| ext fun j ↦ by
      obtain rfl | ne := eq_or_ne i j
      · simp_rw [repr_eq_zero]
      classical simpa [single_apply, ne] using congr(b.repr $z j)
    exact DFunLike.congr_fun l₁ a
  exact r'' (m (range v') i' r)

/-- Over any ring `R`, if `b` is an infinite basis for a module `M`,
and `s` is a maximal linearly independent set,
then the cardinality of `b` is bounded by the cardinality of `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantf2699dd0bd48cd2e0d014cae65ec5ce60da0341da4e9e6f2a2368a9b1cb9ef32.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bfe78f3d5470100b0048f87560d9cf2cff6cbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
