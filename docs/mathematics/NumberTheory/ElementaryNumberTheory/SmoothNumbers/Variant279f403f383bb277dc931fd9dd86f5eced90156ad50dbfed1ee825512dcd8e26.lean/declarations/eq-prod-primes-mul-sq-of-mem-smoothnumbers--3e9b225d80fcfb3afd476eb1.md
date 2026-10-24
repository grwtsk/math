# eq_prod_primes_mul_sq_of_mem_smoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c31aef5-963b-0bd9-6e09-fce042cd67e9",
  "kind": "lemma",
  "lexical_name": "eq_prod_primes_mul_sq_of_mem_smoothNumbers",
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
  "slug": "eq-prod-primes-mul-sq-of-mem-smoothnumbers--3e9b225d80fcfb3afd476eb1",
  "source": {
    "blob": "4f915e9deb1bfb3812656de52f147382487865e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 458,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e9b225d80fcfb3afd476eb168f1fa5724c2953ab89b83f3d5b583f311b459cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c31aef5-963b-0bd9-6e09-fce042cd67e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_prod_primes_mul_sq_of_mem_smoothNumbers {n k : ℕ} (h : n ∈ smoothNumbers k) :
    ∃ s ∈ k.primesBelow.powerset, ∃ m, n = m ^ 2 * (s.prod id) := by
  obtain ⟨l, m, H₁, H₂⟩ := sq_mul_squarefree n
  have hl : l ∈ smoothNumbers k := mem_smoothNumbers_of_dvd h (Dvd.intro_left (m ^ 2) H₁)
  refine ⟨l.primeFactorsList.toFinset, ?_, m, ?_⟩
  · simp only [toFinset_factors, Finset.mem_powerset]
    refine fun p hp ↦ mem_primesBelow.mpr ⟨?_, (mem_primeFactors.mp hp).1⟩
    rw [mem_primeFactors] at hp
    exact mem_smoothNumbers'.mp hl p hp.1 hp.2.1
  rw [← H₁]
  congr
  simp only [toFinset_factors]
  exact (prod_primeFactors_of_squarefree H₂).symm

/-- The set of `k`-smooth numbers `≤ N` is contained in the set of numbers of the form `m^2 * P`,
where `m ≤ √N` and `P` is a product of distinct primes `< k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f915e9deb1bfb3812656de52f147382487865e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
