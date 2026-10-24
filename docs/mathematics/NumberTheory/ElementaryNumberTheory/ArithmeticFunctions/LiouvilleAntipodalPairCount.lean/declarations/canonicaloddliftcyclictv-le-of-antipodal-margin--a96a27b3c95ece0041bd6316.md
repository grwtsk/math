# canonicalOddLiftCyclicTV_le_of_antipodal_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1bdda0d-f8db-42e0-985c-d29c2d3f4c58",
  "kind": "theorem",
  "lexical_name": "canonicalOddLiftCyclicTV_le_of_antipodal_margin",
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
  "slug": "canonicaloddliftcyclictv-le-of-antipodal-margin--a96a27b3c95ece0041bd6316",
  "source": {
    "blob": "f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 687,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a96a27b3c95ece0041bd63169171b4875a3b7eccfb22ad6e0956618dc7df0905",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1bdda0d-f8db-42e0-985c-d29c2d3f4c58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalOddLiftCyclicTV_le_of_antipodal_margin
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M)
    (epsilon margin : ℚ)
    (hr : cyclicMaxOffset (oddLiftOffsets H) < 2 * M)
    (hepsilon : 0 ≤ epsilon)
    (hmargin : liouvilleAllOrderEnergy M H +
        oddResidualAllOrderEnergy M H ≤ 2 + margin)
    (hcount : 2 * (((2 : ℚ) ^ H.card *
        (antipodalPairCount M H : ℚ)) / (M : ℚ) ^ 2) +
        margin ≤ 4 * epsilon) :
    (totalVariationFromUniform (Finset.range (2 * M))
      (cyclicShiftWord (2 * M) (oddLiftOffsets H)
        liouvillePositiveBool) : ℝ) ≤
      ((cyclicMaxOffset (oddLiftOffsets H) : ℚ) /
        ((2 * M : ℕ) : ℚ) : ℝ) +
        Real.sqrt (epsilon : ℝ) / 2 := by
  have hE := canonicalOddLiftEnergy_le_of_antipodal_margin
    M H hM epsilon margin hmargin hcount
  have htv := liouvilleCyclicTV_le_energy
    (2 * M) (oddLiftOffsets H) hr
  have hEreal :
      (liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) : ℝ) ≤
        (epsilon : ℝ) := by exact_mod_cast hE
  have hsqrt := Real.sqrt_le_sqrt hEreal
  exact htv.trans
    (add_le_add_left
      (div_le_div_of_nonneg_right hsqrt (by norm_num)) _)


end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
