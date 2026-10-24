# weightedHomogeneousComponent_mul_of_le_weightedOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0ac8fae-5cd0-f64c-f84c-115ab8daa1d0",
  "kind": "theorem",
  "lexical_name": "weightedHomogeneousComponent_mul_of_le_weightedOrder",
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
  "slug": "weightedhomogeneouscomponent-mul-of-le-weightedorder--0fcbac8016b131f4ec4532e2",
  "source": {
    "blob": "df725abc04836c86bb4ef6298c33165e5493b220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 569,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant578041cdf949edfbc03a221a0df9381bee6450f5c792cf83eb3dc5812d897f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fcbac8016b131f4ec4532e2108a45aa40c427a51bd3454bdea24c335213dbd6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variant578041cdf949edfbc03a221a0df9381bee6450f5c792cf83eb3dc5812d897f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ac8fae-5cd0-f64c-f84c-115ab8daa1d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedHomogeneousComponent_mul_of_le_weightedOrder {f g : MvPowerSeries σ R} {p q : ℕ}
    (hf : p ≤ f.weightedOrder w) (hg : q ≤ g.weightedOrder w) :
    weightedHomogeneousComponent w (p + q) (f * g) =
      weightedHomogeneousComponent w p f * weightedHomogeneousComponent w q g := by
  classical
  ext d
  rw [coeff_weightedHomogeneousComponent]
  split_ifs with hd
  · apply Finset.sum_congr rfl
    intro x hx
    rw [Finset.mem_antidiagonal] at hx
    rw [← hx, map_add] at hd
    simp only [coeff_weightedHomogeneousComponent, coeff_mul]
    rcases trichotomy_of_add_eq_add hd with h | h | h
    · rw [if_pos h.1, if_pos h.2]
    · rw [if_neg (ne_of_lt h), zero_mul]
      rw [← ENat.coe_lt_coe] at h
      rw [coeff_eq_zero_of_lt_weightedOrder w (lt_of_lt_of_le h hf), zero_mul]
    · rw [if_neg (ne_of_lt h), mul_zero]
      rw [← ENat.coe_lt_coe] at h
      rw [coeff_eq_zero_of_lt_weightedOrder w (lt_of_lt_of_le h hg), mul_zero]
  · symm
    apply IsWeightedHomogeneous.coeff_eq_zero _ hd
    exact IsWeightedHomogeneous.mul
      (isWeightedHomogeneous_weightedHomogeneousComponent w f p)
      (isWeightedHomogeneous_weightedHomogeneousComponent w g q)

/-- Homogeneous power series -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variant578041cdf949edfbc03a221a0df9381bee6450f5c792cf83eb3dc5812d897f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant578041cdf949edfbc03a221a0df9381bee6450f5c792cf83eb3dc5812d897f5e.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df725abc04836c86bb4ef6298c33165e5493b220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
