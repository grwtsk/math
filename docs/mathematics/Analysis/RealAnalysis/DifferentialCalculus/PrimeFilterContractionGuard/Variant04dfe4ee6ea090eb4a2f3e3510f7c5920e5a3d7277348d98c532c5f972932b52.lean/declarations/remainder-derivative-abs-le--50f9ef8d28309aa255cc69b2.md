# remainder_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebd97793-967b-e825-fbff-7a0bcce3edc8",
  "kind": "theorem",
  "lexical_name": "remainder_derivative_abs_le",
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
  "slug": "remainder-derivative-abs-le--50f9ef8d28309aa255cc69b2",
  "source": {
    "blob": "d304043ce381f5d4de0e1e13501bc5b7ab79a84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50f9ef8d28309aa255cc69b2fcdbb7eaaee82a261027d71ceacaea1f2e7df16a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd97793-967b-e825-fbff-7a0bcce3edc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainder_derivative_abs_le (q : ℝ) (hq : 0 < q) :
    |deriv oscillatoryRemainder q| ≤
      (frequency + 1 / 2) / (q * Real.sqrt q) := by
  rw [(remainder_hasDerivAt q hq).deriv, abs_div,
    abs_of_pos (mul_pos hq (Real.sqrt_pos.mpr hq))]
  apply div_le_div_of_nonneg_right _ (by positivity)
  calc
    _ ≤ |-frequency * Real.sin (frequency * Real.log q)| +
        |Real.cos (frequency * Real.log q) / 2| := abs_sub _ _
    _ = frequency * |Real.sin (frequency * Real.log q)| +
        |Real.cos (frequency * Real.log q)| / 2 := by
      rw [abs_mul, abs_neg, abs_of_pos frequency_pos, abs_div,
        abs_of_pos (show (0 : ℝ) < 2 by norm_num)]
    _ ≤ frequency * 1 + 1 / 2 :=
      add_le_add (mul_le_mul_of_nonneg_left (Real.abs_sin_le_one _) frequency_pos.le)
        (div_le_div_of_nonneg_right (Real.abs_cos_le_one _) (by norm_num))
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrimeFilterContractionGuard/Variant04dfe4ee6ea090eb4a2f3e3510f7c5920e5a3d7277348d98c532c5f972932b52.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d304043ce381f5d4de0e1e13501bc5b7ab79a84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
