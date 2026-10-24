# primeState_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:049d3a76-a002-030d-c58d-1746c69ec4ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66714f5f-9f2d-2e1e-9383-6cfa1cc1d6bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ff972e0-2c7d-2d2d-822d-8a4ed9ffeac7",
  "kind": "theorem",
  "lexical_name": "primeState_first_order",
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
  "slug": "primestate-first-order--9f1b655064d652049c6e68a7",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 84,
    "path": "GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f1b655064d652049c6e68a78d83626ab1ae143970c485eb977b03f65167ee52",
  "verification": {
    "reference": "docs/verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ff972e0-2c7d-2d2d-822d-8a4ed9ffeac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeState_first_order (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) {T u : ℝ}
    (hpair : ∀ p ∈ P, ∀ q ∈ P, p ≠ q → Real.exp T < (p : ℝ) * q)
    (hu : u ≤ T) :
    PPNCP04.primeState P u = PPNCP04.baseWave u - ∑ p ∈ P, PPNCP04.atom p u := by
  classical
  change primeState P u = _
  rw [primeState_exact P hP]
  rw [powerset_sum_first_order]
  · simp only [primeProduct, Finset.prod_empty, ArithmeticFunction.moebius_apply_one,
      Int.cast_one, one_mul, Finset.prod_singleton]
    simp only [PPNCP04.atom_source_bridge]
    rw [← PPNCP04.baseWave_eq_atom_one]
    have hs : (∑ p ∈ P, (ArithmeticFunction.moebius p : ℝ) * PPNCP04.atom p u) =
        -(∑ p ∈ P, PPNCP04.atom p u) := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro p hp
      rw [ArithmeticFunction.moebius_apply_prime (hP p hp)]
      simp only [Int.cast_neg, Int.cast_one, neg_one_mul]
    rw [hs]
    rfl
  · intro U hU hc
    have hp := product_above_horizon_of_pair P U hP hU hpair hc
    have hlog : T < Real.log (primeProduct U : ℝ) := by
      simpa only [Real.log_exp] using Real.log_lt_log (Real.exp_pos T) hp
    have he : ¬ Real.log (primeProduct U : ℝ) ≤ u := not_le.mpr (hu.trans_lt hlog)
    simp [atom, he]

/-- A supplied pointwise negative amplitude gives an actual continuous-source energy bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
