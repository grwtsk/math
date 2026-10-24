# dividedDifference_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:750ce886-ddc7-2b77-ea7b-c40db3b0932a",
  "kind": "theorem",
  "lexical_name": "dividedDifference_integral",
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
  "slug": "divideddifference-integral--3eb9a29c89f2a64bc5acf7a1",
  "source": {
    "blob": "051dfe75ed412f9b5bed44c11686a5ce7cd58bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eb9a29c89f2a64bc5acf7a18e1d044f4a4a38bde31d3cc5a683e8425cd0b80c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:750ce886-ddc7-2b77-ea7b-c40db3b0932a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dividedDifference_integral {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    (∫ t : ℝ in Ioi 0, dividedDifference a b t) = Real.log (b / a) := by
  have hf : LocallyIntegrableOn (fun t : ℝ ↦ Real.exp (-t)) (Ioi 0) := by
    exact (integrableOn_exp_neg_Ioi 0).locallyIntegrableOn
  have hL : Tendsto (fun t : ℝ ↦ Real.exp (-t)) (𝓝[>] 0) (𝓝 1) := by
    simpa using ((by fun_prop : Continuous (fun t : ℝ ↦ Real.exp (-t))).tendsto 0).mono_left
      nhdsWithin_le_nhds
  have h := Frullani.integral_Ioi_eq hf ha hb hL Real.tendsto_exp_neg_atTop_nhds_zero
    (by convert dividedDifference_integrable ha hb using 1; ext t; simp [dividedDifference, smul_eq_mul, div_eq_mul_inv, mul_comm])
  simpa [dividedDifference, smul_eq_mul, div_eq_mul_inv, mul_comm, neg_mul] using h


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `051dfe75ed412f9b5bed44c11686a5ce7cd58bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
