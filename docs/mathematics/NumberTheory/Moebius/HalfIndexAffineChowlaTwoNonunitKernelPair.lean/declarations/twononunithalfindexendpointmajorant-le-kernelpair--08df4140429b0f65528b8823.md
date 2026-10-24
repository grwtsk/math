# twoNonunitHalfIndexEndpointMajorant_le_kernelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:066e580f-00c5-f0b2-784c-242e4b13fbc0",
  "kind": "theorem",
  "lexical_name": "twoNonunitHalfIndexEndpointMajorant_le_kernelPair",
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
  "slug": "twononunithalfindexendpointmajorant-le-kernelpair--08df4140429b0f65528b8823",
  "source": {
    "blob": "a887099c7d7598b5ec0a64aa555b7651faf0eaae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 342,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08df4140429b0f65528b8823410e197abab580478930193feb13fb9740c4bbe9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:066e580f-00c5-f0b2-784c-242e4b13fbc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoNonunitHalfIndexEndpointMajorant_le_kernelPair
    (b : ℕ) :
    twoNonunitHalfIndexAffineChowlaEndpointMajorant b ≤
      twoNonunitKernelPairEndpointMajorant b := by
  unfold twoNonunitHalfIndexAffineChowlaEndpointMajorant
    twoNonunitKernelPairEndpointMajorant
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hTwo : TwoUnitSquareModulusParameter d
  · simp [hTwo, TwoNonunitSquareModulusParameter]
  · have hNonunit : TwoNonunitSquareModulusParameter d := hTwo
    simp only [hTwo, hNonunit, dif_pos]
    apply mul_le_mul_of_nonneg_left ?_ (by positivity)
    apply Finset.sum_le_sum
    intro k _hk
    exact halfIndexAffineChowlaFrequencyMajorant_le_kernelPair b d k

/-- Natural-scale supplier for the order-two kernel-pair majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a887099c7d7598b5ec0a64aa555b7651faf0eaae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
