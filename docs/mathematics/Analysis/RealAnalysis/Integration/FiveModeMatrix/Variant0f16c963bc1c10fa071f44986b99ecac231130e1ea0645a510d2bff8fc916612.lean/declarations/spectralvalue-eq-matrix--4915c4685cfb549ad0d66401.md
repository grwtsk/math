# spectralValue_eq_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dac0f2b-f89d-10d4-05c4-2a2c6185a0b0",
  "kind": "theorem",
  "lexical_name": "spectralValue_eq_matrix",
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
  "slug": "spectralvalue-eq-matrix--4915c4685cfb549ad0d66401",
  "source": {
    "blob": "416bb673033c8c3ef534eea6a39eef0ac374682f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 254,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4915c4685cfb549ad0d664013f33f80b9a6cc8ce7bc842438e40de30c8c19561",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dac0f2b-f89d-10d4-05c4-2a2c6185a0b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralValue_eq_matrix (A : ℝ) (hA : 1 ≤ A)
    (hg : GammaEntryIntegrability A) :
    spectralValue A =
      ((∑ i : Fin 5, ∑ j : Fin 5,
        alpha A i * alpha A j * geometricEntry A i j) : ℝ) := by
  unfold spectralValue
  simp_rw [normalized_bilateral_square A hA]
  rw [tsum_div_const, ← geometric_matrix_zero_dictionary A hA hg]
  have hz : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast (source_normalization_pos A hA).ne'
  push_cast
  exact mul_div_cancel_left₀ _ hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variant0f16c963bc1c10fa071f44986b99ecac231130e1ea0645a510d2bff8fc916612.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416bb673033c8c3ef534eea6a39eef0ac374682f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
