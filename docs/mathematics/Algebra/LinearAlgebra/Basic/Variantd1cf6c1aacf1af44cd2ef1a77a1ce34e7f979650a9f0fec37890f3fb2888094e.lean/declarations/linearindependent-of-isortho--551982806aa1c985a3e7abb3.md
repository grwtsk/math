# linearIndependent_of_isOrthoᵢ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19beb57a-4072-d75b-9986-6b0530eba7c0",
  "kind": "theorem",
  "lexical_name": "linearIndependent_of_isOrthoᵢ",
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
  "slug": "linearindependent-of-isortho--551982806aa1c985a3e7abb3",
  "source": {
    "blob": "ef05c33a6057c9265bfcf4e939e80d39782fdbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551982806aa1c985a3e7abb3f45f52bfd57e2ca7ec57caf81cd8126d1b761e00",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19beb57a-4072-d75b-9986-6b0530eba7c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_of_isOrthoᵢ {B : V₁ →ₛₗ[I₁] V₁ →ₛₗ[I₁'] V} {v : n → V₁}
    (hv₁ : B.IsOrthoᵢ v) (hv₂ : ∀ i, B (v i) (v i) ≠ 0) : LinearIndependent K₁ v := by
  rw [linearIndependent_iff']
  intro s w hs i hi
  have : B (s.sum fun i : n ↦ w i • v i) (v i) = 0 := by rw [hs, map_zero, zero_apply]
  have hsum : (s.sum fun j : n ↦ I₁ (w j) • B (v j) (v i)) = I₁ (w i) • B (v i) (v i) := by
    apply Finset.sum_eq_single_of_mem i hi
    intro j _hj hij
    rw [isOrthoᵢ_def.1 hv₁ _ _ hij, smul_zero]
  simp_rw [B.map_sum₂, map_smulₛₗ₂, hsum] at this
  apply (map_eq_zero I₁).mp
  exact (smul_eq_zero.mp this).elim _root_.id (hv₂ i · |>.elim)

end Field

/-! ### Reflexive bilinear maps -/

section Reflexive

variable [CommSemiring R] [AddCommMonoid M] [Module R M] [CommSemiring R₁] [AddCommMonoid M₁]
  [Module R₁ M₁] {I₁ : R₁ →+* R} {I₂ : R₁ →+* R} {B : M₁ →ₛₗ[I₁] M₁ →ₛₗ[I₂] M}

/-- The proposition that a sesquilinear map is reflexive -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef05c33a6057c9265bfcf4e939e80d39782fdbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
