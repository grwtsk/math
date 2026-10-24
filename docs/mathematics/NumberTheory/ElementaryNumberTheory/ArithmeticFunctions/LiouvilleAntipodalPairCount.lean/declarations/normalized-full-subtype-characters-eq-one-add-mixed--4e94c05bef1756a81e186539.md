# normalized_full_subtype_characters_eq_one_add_mixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dbdca79-c95c-6204-5032-3874d45e82b2",
  "kind": "theorem",
  "lexical_name": "normalized_full_subtype_characters_eq_one_add_mixed",
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
  "slug": "normalized-full-subtype-characters-eq-one-add-mixed--4e94c05bef1756a81e186539",
  "source": {
    "blob": "f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 539,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e94c05bef1756a81e1865396952486c77bc053ca1771171a7295f5110c273af",
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

Occurrence: `result:2dbdca79-c95c-6204-5032-3874d45e82b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_full_subtype_characters_eq_one_add_mixed
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    (∑ S : Finset {h : ℕ // h ∈ H},
      ((∑ p ∈ (Finset.range M).product (Finset.range M),
          (-1 : ℚ) ^ (shiftSubsetValues H S).card *
            ∏ h ∈ shiftSubsetValues H S,
              (((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
                ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
          (M : ℚ) ^ 2)) =
      1 + dyadicSignedMixedEnergy M H := by
  rw [subtype_character_sum_empty_split]
  have hempty :
      ((∑ p ∈ (Finset.range M).product (Finset.range M),
          (-1 : ℚ) ^ (shiftSubsetValues H ∅).card *
            ∏ h ∈ shiftSubsetValues H ∅,
              (((ArithmeticFunction.liouville (p.1 + h + 1) : ℤ) : ℚ) *
                ((ArithmeticFunction.liouville (2 * p.2 + 2 * h + 3) : ℤ) : ℚ))) /
          (M : ℚ) ^ 2) = 1 := by
    simpa [shiftSubsetValues] using empty_character_root_pair_normalization M hM
  rw [hempty, normalized_nonempty_subtype_characters_eq_mixed M H hM]

/-- The complete normalized natural-number powerset character sum
equals the corresponding complete subtype-coordinate character sum.
This is the exact final reindexing, before identifying the detector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
