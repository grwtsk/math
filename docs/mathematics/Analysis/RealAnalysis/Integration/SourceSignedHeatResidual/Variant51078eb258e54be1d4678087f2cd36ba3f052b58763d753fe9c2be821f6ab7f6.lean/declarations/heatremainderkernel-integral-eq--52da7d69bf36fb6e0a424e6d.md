# heatRemainderKernel_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c93a1776-efc6-6f82-3188-9c5d9e495da5",
  "kind": "theorem",
  "lexical_name": "heatRemainderKernel_integral_eq",
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
  "slug": "heatremainderkernel-integral-eq--52da7d69bf36fb6e0a424e6d",
  "source": {
    "blob": "fe94b55769564b538b433410a267c624a86ba560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52da7d69bf36fb6e0a424e6daca4be8ffab1da080934bdc4e1f9d62fb10cd08b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c93a1776-efc6-6f82-3188-9c5d9e495da5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatRemainderKernel_integral_eq (hr : Measurable r) (hMr : 0 ≤ Mr)
    (hbr : ∀ x, |r x| ≤ Mr) {τ : ℝ} (hτ : 0 ≤ τ) :
    (∫ x, heatRemainderKernel τ (r x) ∂μ) = signedHeatRemainder μ r τ := by
  have he : (fun x => heatRemainderKernel τ (r x)) =
      fun x => r x - r x * Real.exp (-τ * r x ^ 2) := by
    funext x
    unfold heatRemainderKernel
    ring
  rw [he, integral_sub (bounded_integrable hr hMr hbr)
    (signedHeat_integrable hr hMr hbr τ)]
  have hd := signedHeat_decomposition hr hMr hbr (μ := μ) hτ
  unfold signedHeat at hd
  linarith

/-- Every nonlinear interaction is integrable at each fixed bounded source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe94b55769564b538b433410a267c624a86ba560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
