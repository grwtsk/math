# primeFactors_gcd_choose_of_isPrimePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9673162b-d566-88be-7653-620c7cec39c1",
  "kind": "lemma",
  "lexical_name": "primeFactors_gcd_choose_of_isPrimePow",
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
  "slug": "primefactors-gcd-choose-of-isprimepow--c44d9af1755dafbfa5b462fc",
  "source": {
    "blob": "da577617157bbaffb0e8d3576c77923344d3330b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 192,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44d9af1755dafbfa5b462fc6971076306179f8072c3cdb09c026f92123cdd0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9673162b-d566-88be-7653-620c7cec39c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma primeFactors_gcd_choose_of_isPrimePow (h : IsPrimePow n) :
    ((Icc 1 (n - 1)).gcd n.choose).primeFactors = {n.minFac} := by
  have ne_zero : (Icc 1 (n - 1)).gcd n.choose ≠ 0 :=
    gcd_ne_zero_iff.mpr ⟨1, by simp; grind [IsPrimePow.two_le h]⟩
  have isPrime := minFac_prime_iff.mpr (IsPrimePow.ne_one h)
  refine eq_singleton_iff_unique_mem.mpr ⟨isPrime.mem_primeFactors
    (minFac_dvd_gcd_choose_of_isPrimePow h) ne_zero, ?_⟩
  intro p hp
  simp only [mem_primeFactors, ne_eq] at hp
  obtain ⟨hp₁, hp₂, hp₃⟩ := hp
  have : Fact (Nat.Prime p) := ⟨hp₁⟩
  simp_rw [Finset.dvd_gcd_iff, ← modEq_zero_iff_dvd] at hp₂
  have := eq_pow_multiplicity_of_choose_modEq_zero_nat h.pos hp₂
  have dvd_pow : n.minFac ∣  p ^ multiplicity p n := this ▸ minFac_dvd _
  exact (Nat.prime_dvd_prime_iff_eq isPrime hp₁).mp (isPrime.dvd_of_dvd_pow dvd_pow)|>.symm

/-- For a prime power `n`, the greatest common divisor of `choose n 1, ⋯, choose n (n - 1)`
is actually the minimal prime factor of `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant0f429c67a239fb743f1d04c37255d247fe38dfffa70db17122f067c98f23fbfe.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da577617157bbaffb0e8d3576c77923344d3330b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
