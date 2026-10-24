# relations_le_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac48ecd6-d127-0e67-5558-4d9ee0471a82",
  "kind": "theorem",
  "lexical_name": "relations_le_kernel",
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
  "slug": "relations-le-kernel--d92d19f96475c989ca5564a8",
  "source": {
    "blob": "fbce9ce602ea0758c8456aef5ed8f1791cf0ced5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d92d19f96475c989ca5564a8aa4838097493f286798960331bda470fe4a054a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac48ecd6-d127-0e67-5558-4d9ee0471a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relations_le_kernel (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    relations a b r N ≤ RingHom.ker (evaluate a b r j N) := by
  let c := parameterScalar R N
  let e := parameter R N
  let z := iterate (c j) (c (quadratic a b r)) e N
  have hj' : c (derivative a b r) * c j = 1 := by
    rw [← map_mul, hj, map_one]
  have hz : c (derivative a b r) * z + c (quadratic a b r) * z ^ 2 + z ^ 3 = e ^ 2 :=
    iterate_solves _ _ _ _ hj' N (power_zero_of_le _ (parameter_pow N) (by omega))
  have hr' : c r * (c r - c a) * (c r + c b) = 0 := by
    simpa only [map_mul, map_sub, map_add, map_zero] using congrArg c hr
  have hcurve : (c r + z) * (c r + z - c a) * (c r + z + c b) = e ^ 2 := by
    rw [cubic_shift _ _ _ _ hr']
    simpa only [derivative, quadratic, map_add, map_sub, map_mul, map_pow, map_ofNat]
      using hz
  have he : e ∈ (Ideal.span {e} : Ideal (Parameter R N)) := Ideal.subset_span (by simp)
  have hmap : (sectionIdeal r).map (evaluate a b r j N) ≤ Ideal.span {e} := by
    apply Ideal.map_le_iff_le_comap.mpr
    apply Ideal.span_le.mpr
    intro p hp
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
    rcases hp with rfl | rfl
    · change evaluate a b r j N (MvPolynomial.X 0 - MvPolynomial.C r) ∈ _
      simpa [evaluate, c, e] using
        (FreyFormalNeighborhood.iterate_mem (Ideal.span {e}) (c j)
          (c (quadratic a b r)) e he N)
    · change evaluate a b r j N (MvPolynomial.X 1) ∈ _
      simpa [evaluate, e] using he
  have hpow : (sectionIdeal r ^ (N + 1)).map (evaluate a b r j N) = ⊥ := by
    apply le_antisymm _ bot_le
    calc
      _ = ((sectionIdeal r).map (evaluate a b r j N)) ^ (N + 1) := Ideal.map_pow _ _ _
      _ ≤ (Ideal.span {e}) ^ (N + 1) := Ideal.pow_right_mono hmap _
      _ = ⊥ := by rw [Ideal.span_singleton_pow]; simp [e, parameter_pow]
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    have hp' : p = equation a b := Set.mem_singleton_iff.mp hp
    subst p
    change evaluate a b r j N (equation a b) = 0
    simpa [evaluate, equation, c, e, z] using sub_eq_zero.mpr hcurve
  · exact Ideal.map_eq_bot_iff_le_ker.mp hpow

/-- Forward homomorphism from the actual relation quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbce9ce602ea0758c8456aef5ed8f1791cf0ced5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
