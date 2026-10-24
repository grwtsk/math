# dyadicSignedMixedEnergy_eq_antipodal_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58d8a0ff-4970-a934-fe0d-965399c7dbb4",
  "kind": "theorem",
  "lexical_name": "dyadicSignedMixedEnergy_eq_antipodal_count",
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
  "slug": "dyadicsignedmixedenergy-eq-antipodal-count--9c294ef2229f6bbdda741de1",
  "source": {
    "blob": "f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 592,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c294ef2229f6bbdda741de100299e8a5cc510421063786558fd9ef803bf7cf2",
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

Occurrence: `result:58d8a0ff-4970-a934-fe0d-965399c7dbb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicSignedMixedEnergy_eq_antipodal_count
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    dyadicSignedMixedEnergy M H =
      (((2 : ℚ) ^ H.card * (antipodalPairCount M H : ℚ)) /
        ((M : ℚ) ^ 2)) - 1 := by
  classical
  have hdetector :
      (((2 : ℚ) ^ H.card * (antipodalPairCount M H : ℚ)) /
          (M : ℚ) ^ 2) =
        (∑ p ∈ (Finset.range M).product (Finset.range M),
          ∏ h ∈ H,
            ((1 : ℚ) -
              ((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
                ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
          (M : ℚ) ^ 2 := by
    rw [normalized_antipodal_product_eq_frequency M H hM]
  have hsum :
      (∑ p ∈ (Finset.range M).product (Finset.range M),
          ∏ h ∈ H,
            ((1 : ℚ) -
              ((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
                ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
          (M : ℚ) ^ 2 =
        1 + dyadicSignedMixedEnergy M H := by
    simp_rw [antipodal_character_powerset]
    rw [normalized_powerset_character_sum]
    rw [normalized_full_powerset_eq_subtype_characters]
    exact normalized_full_subtype_characters_eq_one_add_mixed M H hM
  rw [hdetector, hsum]
  ring


/-- The exact canonical lifted Liouville energy expressed through
the antipodal root-pair count. This is a finite identity, not an
asymptotic bound or a proof of Chowla cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
