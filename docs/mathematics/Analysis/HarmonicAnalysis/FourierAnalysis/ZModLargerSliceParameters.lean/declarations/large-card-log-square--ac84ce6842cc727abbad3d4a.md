# large_card_log_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebfa1dc4-f9e8-e4eb-c13e-ec0550f200d0",
  "kind": "theorem",
  "lexical_name": "large_card_log_square",
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
  "slug": "large-card-log-square--ac84ce6842cc727abbad3d4a",
  "source": {
    "blob": "9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 68,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac84ce6842cc727abbad3d4a91d0d6c405a3635ed5b7206a67e13ec0f6d889d3",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebfa1dc4-f9e8-e4eb-c13e-ec0550f200d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem large_card_log_square (ε : ℝ) (hε : 0 < ε)
    (n : ℕ) (hn : 2 ≤ n)
    (hlarge : sliceThreshold ε ^ 2 ≤ (n : ℝ)) :
    (4000 * sourceConstant / ε) * (Real.log n) ^ 2 ≤ n := by
  have hn1 : (1 : ℝ) ≤ n := by
    exact_mod_cast (show 1 ≤ n by omega)
  have hlog := log_sq_le_sixteen_sqrt (n : ℝ) hn1
  have hC := sourceConstant_pos
  have hA : 0 < 4000 * sourceConstant / ε := by
    positivity
  have hK : 0 < sliceThreshold ε := by
    unfold sliceThreshold
    positivity
  have hroot : sliceThreshold ε ≤ Real.sqrt n :=
    (Real.le_sqrt hK.le (Nat.cast_nonneg n)).mpr hlarge
  calc
    _ ≤ (4000 * sourceConstant / ε) * (16 * Real.sqrt n) :=
      mul_le_mul_of_nonneg_left hlog hA.le
    _ = sliceThreshold ε * Real.sqrt n := by
      unfold sliceThreshold
      ring
    _ ≤ Real.sqrt n * Real.sqrt n :=
      mul_le_mul_of_nonneg_right hroot (Real.sqrt_nonneg _)
    _ = n := Real.mul_self_sqrt (Nat.cast_nonneg n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceParameters.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceParameters.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e14c0376ea8a91ed95eb2e5b9fa8e124e8ecc85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
