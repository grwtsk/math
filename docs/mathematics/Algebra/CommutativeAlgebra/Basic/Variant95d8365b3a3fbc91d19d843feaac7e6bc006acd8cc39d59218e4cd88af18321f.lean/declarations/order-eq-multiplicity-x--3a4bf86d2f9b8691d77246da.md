# order_eq_multiplicity_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2a53f1a-9c1c-974c-29da-8a12a5248eb2",
  "kind": "theorem",
  "lexical_name": "order_eq_multiplicity_X",
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
  "slug": "order-eq-multiplicity-x--3a4bf86d2f9b8691d77246da",
  "source": {
    "blob": "bfdc8f72082525c52f1fe03aa34cc279cb8e9735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2478,
    "line": 2448,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a4bf86d2f9b8691d77246da5e6cc27b851046accfff495aab8674cf1c7d6701",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a53f1a-9c1c-974c-29da-8a12a5248eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2448–2478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_eq_multiplicity_X {R : Type*} [Semiring R] (φ : PowerSeries R) :
    order φ = multiplicity X φ := by
  rcases eq_or_ne φ 0 with (rfl | hφ)
  · simp
  induction' ho : order φ using PartENat.casesOn with n
  · simp [hφ] at ho
  have hn : φ.order.get (order_finite_iff_ne_zero.mpr hφ) = n := by simp [ho]
  rw [← hn]
  refine'
    le_antisymm (le_multiplicity_of_pow_dvd <| X_pow_order_dvd (order_finite_iff_ne_zero.mpr hφ))
      (PartENat.find_le _ _ _)
  rintro ⟨ψ, H⟩
  have := congr_arg (coeff R n) H
  rw [← (ψ.commute_X.pow_right _).eq, coeff_mul_of_lt_order, ← hn] at this
  · exact coeff_order _ this
  · rw [X_pow_eq, order_monomial]
    split_ifs
    · exact PartENat.natCast_lt_top _
    · rw [← hn, PartENat.coe_lt_coe]
      exact Nat.lt_succ_self _
set_option linter.uppercaseLean3 false in
#align power_series.order_eq_multiplicity_X PowerSeries.order_eq_multiplicity_X

end OrderBasic

section OrderZeroNeOne

variable [Semiring R] [Nontrivial R]

/-- The order of the formal power series `1` is `0`.-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean#L2448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdc8f72082525c52f1fe03aa34cc279cb8e9735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
