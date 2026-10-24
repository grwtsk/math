# normalizedFactorsEquivSpanNormalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:375fb023f652057b06538d05dbcba28f6456f90245c956b57057f64af66e1b16",
  "kind": "def",
  "lexical_name": "normalizedFactorsEquivSpanNormalizedFactors",
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
  "slug": "normalizedfactorsequivspannormalizedfactors--4e8c5476edd8686aa51ff0f4",
  "source": {
    "blob": "ebaae1e55906a2e45da6c0f703da3ac57a9f1c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1495,
    "line": 1467,
    "path": "GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e8c5476edd8686aa51ff0f4c992dd1d2f378afc1b886dc2d7ad157f406a4d13",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:375fb023f652057b06538d05dbcba28f6456f90245c956b57057f64af66e1b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1467–1495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def normalizedFactorsEquivSpanNormalizedFactors {r : R} (hr : r ≠ 0) :
    { d : R | d ∈ normalizedFactors r } ≃
      { I : Ideal R | I ∈ normalizedFactors (Ideal.span ({r} : Set R)) } := by
  refine Equiv.ofBijective ?_ ?_
  · exact fun d =>
      ⟨Ideal.span {↑d}, singleton_span_mem_normalizedFactors_of_mem_normalizedFactors d.prop⟩
  · refine ⟨?_, ?_⟩
    · rintro ⟨a, ha⟩ ⟨b, hb⟩ h
      rw [Subtype.mk_eq_mk, Ideal.span_singleton_eq_span_singleton, Subtype.coe_mk,
          Subtype.coe_mk] at h
      exact Subtype.mk_eq_mk.mpr (mem_normalizedFactors_eq_of_associated ha hb h)
    · rintro ⟨i, hi⟩
      have : i.IsPrime := isPrime_of_prime (prime_of_normalized_factor i hi)
      have := exists_mem_normalizedFactors_of_dvd hr
        (Submodule.IsPrincipal.prime_generator_of_isPrime i
        (prime_of_normalized_factor i hi).ne_zero).irreducible ?_
      · obtain ⟨a, ha, ha'⟩ := this
        use ⟨a, ha⟩
        simp only [Subtype.coe_mk, Subtype.mk_eq_mk, ← span_singleton_eq_span_singleton.mpr ha',
            Ideal.span_singleton_generator]
      · exact (Submodule.IsPrincipal.mem_iff_generator_dvd i).mp
          ((show Ideal.span {r} ≤ i from dvd_iff_le.mp (dvd_of_mem_normalizedFactors hi))
            (mem_span_singleton.mpr (dvd_refl r)))
#align normalized_factors_equiv_span_normalized_factors normalizedFactorsEquivSpanNormalizedFactors

variable [DecidableRel ((· ∣ ·) : R → R → Prop)] [DecidableRel ((· ∣ ·) : Ideal R → Ideal R → Prop)]

/-- The bijection `normalizedFactorsEquivSpanNormalizedFactors` between the set of prime
    factors of `r` and the set of prime factors of the ideal `⟨r⟩` preserves multiplicities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean#L1467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebaae1e55906a2e45da6c0f703da3ac57a9f1c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
