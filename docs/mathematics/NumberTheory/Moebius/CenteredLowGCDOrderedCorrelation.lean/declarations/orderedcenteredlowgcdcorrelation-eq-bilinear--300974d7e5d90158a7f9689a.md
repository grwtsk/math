# orderedCenteredLowGCDCorrelation_eq_bilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f47dfd-fc71-d7a9-e9fc-f25771f7bbd7",
  "kind": "theorem",
  "lexical_name": "orderedCenteredLowGCDCorrelation_eq_bilinear",
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
  "slug": "orderedcenteredlowgcdcorrelation-eq-bilinear--300974d7e5d90158a7f9689a",
  "source": {
    "blob": "1e17fea5537a23b925a6daac4f100b98bf708905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:300974d7e5d90158a7f9689ac3f3df02b036570ccc0f9abd6779b19ae0ddac90",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f47dfd-fc71-d7a9-e9fc-f25771f7bbd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedCenteredLowGCDCorrelation_eq_bilinear
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    orderedCenteredLowGCDCorrelation X Y w =
      centeredLowGCDBilinear X Y w := by
  rw [centeredLowGCDBilinear_eq_four_channel hX hY]
  unfold centeredLowGCDChannelBilinear
    orderedCenteredLowGCDCorrelation
    centeredLowGCDPairKernel
  simp_rw [mul_add, mul_sub, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  have hgg :=
    (genuineLowGCDBilinear_eq_ordered_pair_sum X Y w).symm
  have hleft :
      (∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * genuineMobiusLogAtom X q) =
      anchorMass X w * genuineCoefficientMass X w := by
    rw [genuineCoefficientMass_eq_weighted_atom]
    unfold anchorMass
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro q hq
    ring
  have hright :
      (∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * genuineMobiusLogAtom X n) =
      genuineCoefficientMass X w * anchorMass X w := by
    rw [genuineCoefficientMass_eq_weighted_atom]
    unfold anchorMass
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro q hq
    ring
  have hanchor :
      (∑ n ∈ octaveIndexSet X,
        ∑ q ∈ octaveIndexSet X,
          w n * w q * 1) =
      anchorMass X w ^ 2 := by
    unfold anchorMass
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    apply Finset.sum_congr rfl
    intro q hq
    ring
  rw [← hgg, hleft, hright, hanchor]


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDOrderedCorrelation.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e17fea5537a23b925a6daac4f100b98bf708905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
