# integral_PhiR_sq_mul_cos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61f4ab4f-473b-23ba-a0db-871b96f1b1cf",
  "kind": "theorem",
  "lexical_name": "integral_PhiR_sq_mul_cos",
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
  "slug": "integral-phir-sq-mul-cos--057564b35c441871b75f28dc",
  "source": {
    "blob": "58cab2cabe3d30794ee6e204b4ff6fa1c45a683d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 457,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:057564b35c441871b75f28dce899fe393bd3b4c5160cc01eb1e025497ec78eee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f4ab4f-473b-23ba-a0db-871b96f1b1cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_PhiR_sq_mul_cos (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L)
    (y : ℝ) : ∫ x, PhiR ϱ L w x ^ 2 * Real.cos (x * y) = 2 * π * g ϱ L w y :=
  integral_mul_cos_of_paperFT_eq (A := g ϱ L w) (G := fun r => PhiR ϱ L w r ^ 2)
    (autocorr_continuous_of_even phi_sq_even ((phi_continuous hϱ hw hwL).pow 2)
      (phi_sq_hasCompactSupport hϱ hw))
    (autocorr_integrable_of_even phi_sq_even ((phi_continuous hϱ hw hwL).pow 2)
      (phi_sq_hasCompactSupport hϱ hw))
    (integrable_PhiR_sq hϱ hw hwL)
    (fun r => by rw [← PhiR_sq_eq hϱ hw hwL r]; push_cast; ring) y

/-- `∫ φ̂(r)² dr = 2π ∫ φ² = 2π a L` (Plancherel; [prop:trace] μ-part, "∫φ̂(r)²dr = 2π∫φ² = 2πaL").
Obtained as the `y = 0` case of the inversion formula, with `A_φ(0) = ∫φ² = aL`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cab2cabe3d30794ee6e204b4ff6fa1c45a683d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
