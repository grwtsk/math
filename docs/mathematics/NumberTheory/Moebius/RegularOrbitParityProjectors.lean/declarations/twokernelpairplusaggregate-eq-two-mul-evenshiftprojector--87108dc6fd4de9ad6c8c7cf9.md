# twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d48b73b-182c-2516-e96a-221a373bd1ed",
  "kind": "theorem",
  "lexical_name": "twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector",
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
  "slug": "twokernelpairplusaggregate-eq-two-mul-evenshiftprojector--87108dc6fd4de9ad6c8c7cf9",
  "source": {
    "blob": "a9a15e1021f4c46f86154eeffa69fb74cc277925",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitParityProjectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87108dc6fd4de9ad6c8c7cf9dc2823f57e523bafc533c3e4da80cb1bcebfe036",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d48b73b-182c-2516-e96a-221a373bd1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoKernelPairPlusAggregate_eq_two_mul_evenShiftProjector
    (b d r : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d)
    (k : ZMod (d * d)) :
    twoKernelPairPlusAggregate b d r k =
      (2 : ℂ) * twoKernelEvenShiftProjectorAggregate b d r k := by
  classical
  rw [twoKernelPairPlusAggregate_eq_projector b d r hNonunit k]
  unfold twoKernelEvenShiftProjectorAggregate
    positiveEndpointEvenShiftSet
  rw [Finset.sum_filter, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro h _hh
  rw [twoKernelShiftCharacter_eq_neg_one_pow d h hNonunit]
  by_cases heven : h % 2 = 0
  · have hform : h = 2 * (h / 2) := by
      omega
    have hsign : (-1 : ℂ) ^ h = 1 := by
      rw [hform, pow_mul]
      norm_num
    simp [heven, hsign]
    ring
  · have hodd : h % 2 = 1 := by
      omega
    have hform : h = 2 * (h / 2) + 1 := by
      omega
    have hsign : (-1 : ℂ) ^ h = -1 := by
      rw [hform, pow_add, pow_mul]
      norm_num
    simp [hodd, hsign]

/-- The pair-difference projector is exactly twice the odd-shift projected
aggregate.  No norm or absolute value is introduced before the projection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitParityProjectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitParityProjectors.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a15e1021f4c46f86154eeffa69fb74cc277925` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
