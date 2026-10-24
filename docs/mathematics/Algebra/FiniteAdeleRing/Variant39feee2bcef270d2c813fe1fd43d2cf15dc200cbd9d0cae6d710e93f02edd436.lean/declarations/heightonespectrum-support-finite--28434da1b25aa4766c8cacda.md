# HeightOneSpectrum.Support.finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a91af804-ec1c-ec72-d551-55f930fbd13d",
  "kind": "lemma",
  "lexical_name": "HeightOneSpectrum.Support.finite",
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
  "slug": "heightonespectrum-support-finite--28434da1b25aa4766c8cacda",
  "source": {
    "blob": "e9aa4e8de4293bccb1dee90bfc365764e2c4dff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 53,
    "path": "GRWTSK/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28434da1b25aa4766c8cacdae3744da4524a3b8256e36d12edbdd3b28d09a2f0",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a91af804-ec1c-ec72-d551-55f930fbd13d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HeightOneSpectrum.Support.finite (k : K) : (Support R k).Finite := by
  -- We write k=n/d.
  obtain ⟨⟨n, ⟨d, hd⟩⟩, hk⟩ := IsLocalization.surj (nonZeroDivisors R) k
  have hd' : d ≠ 0 := nonZeroDivisors.ne_zero hd
  suffices {v : HeightOneSpectrum R | v.valuation K (algebraMap R K d) < 1}.Finite by
    apply Set.Finite.subset this
    intro v hv
    apply_fun v.valuation K at hk
    simp only [Valuation.map_mul, valuation_of_algebraMap] at hk
    rw [Set.mem_setOf_eq, valuation_of_algebraMap]
    have := intValuation_le_one v n
    contrapose! this
    rw [← hk, mul_comm]
    exact (lt_mul_of_one_lt_right (by simp) hv).trans_le <|
      mul_le_mul_of_nonneg_right this (by simp)
  simp_rw [valuation_lt_one_iff_dvd]
  apply Ideal.finite_factors
  simpa only [Submodule.zero_eq_bot, ne_eq, Ideal.span_singleton_eq_bot]

end IsDedekindDomain

noncomputable section

open Function Set IsDedekindDomain.HeightOneSpectrum

namespace IsDedekindDomain

variable (K)

open scoped RestrictedProduct

/-! ### The finite adèle ring of a Dedekind domain
We define the finite adèle ring of `R` as the restricted product over all maximal ideals `v` of `R`
of `adicCompletion` with respect to `adicCompletionIntegers`. We prove that it is a commutative
ring. -/

/--
If `K` is the field of fractions of the Dedekind domain `R` then `FiniteAdeleRing R K` is
the ring of finite adeles of `K`, defined as the restricted product of the completions
`K_v` with respect to the subrings `R_v`. Here `v` runs through the nonzero primes of `R`
and the restricted product is the subring of `∏_v K_v` consisting of elements which
are in `R_v` for all but finitely many `v`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9aa4e8de4293bccb1dee90bfc365764e2c4dff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
