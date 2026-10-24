# volumeIoiPow_apply_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:295be4af-ee12-b369-b919-065133060d4f",
  "kind": "lemma",
  "lexical_name": "volumeIoiPow_apply_Iio",
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
  "slug": "volumeioipow-apply-iio--acbd5b8a8d9e6e502fea71aa",
  "source": {
    "blob": "7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acbd5b8a8d9e6e502fea71aa9b9e88fd2379f9e3921d92d586246fb2c8a9b592",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:295be4af-ee12-b369-b919-065133060d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma volumeIoiPow_apply_Iio (n : ℕ) (x : Ioi (0 : ℝ)) :
    volumeIoiPow n (Iio x) = ENNReal.ofReal (x.1 ^ (n + 1) / (n + 1)) := by
  have hr₀ : 0 ≤ x.1 := le_of_lt x.2
  rw [volumeIoiPow, withDensity_apply _ measurableSet_Iio,
    setLIntegral_subtype measurableSet_Ioi _ fun a : ℝ ↦ .ofReal (a ^ n),
    image_subtype_val_Ioi_Iio, restrict_congr_set Ioo_ae_eq_Ioc,
    ← ofReal_integral_eq_lintegral_ofReal (intervalIntegrable_pow _).1, ← integral_of_le hr₀]
  · simp
  · filter_upwards [ae_restrict_mem measurableSet_Ioc] with y hy
    exact pow_nonneg hy.1.le _

/-- The intervals `(0, k + 1)` have finite measure `MeasureTheory.Measure.volumeIoiPow _`
and cover the whole open ray `(0, +∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
