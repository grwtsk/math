# N0star_lower_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c20cccee-c5eb-ea67-0036-57966e9acff4",
  "kind": "theorem",
  "lexical_name": "N0star_lower_moment",
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
  "slug": "n0star-lower-moment--435f5dceaf573c634eb6731c",
  "source": {
    "blob": "4f5f341bcf55c0dca2ed9d176a0e76702b18cfea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variant00852f36a21ec426dc25b87d5dac770515aae2a6fd7f331900c9b69c666bf1ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:435f5dceaf573c634eb6731c2bbd80cd0331b52a830e2ddc26075e54333c3221",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variant00852f36a21ec426dc25b87d5dac770515aae2a6fd7f331900c9b69c666bf1ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c20cccee-c5eb-ea67-0036-57966e9acff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N0star_lower_moment
    {N0star N NII trGh frGh B κ R₁ R₂ : ℝ} (hB : 0 ≤ B)
    (h0 : 4 * trGh - frGh - 2 * N - 3 * NII - B * (4 + 2 * Real.sqrt frGh + B) ≤ N0star)
    (htr : N - R₁ ≤ trGh) (hfr : frGh ≤ κ * N + R₂) :
    (2 - κ) * N - (4 * R₁ + R₂ + 3 * NII
        + B * (4 + 2 * Real.sqrt (κ * N + R₂) + B)) ≤ N0star := by
  have h2 : Real.sqrt frGh ≤ Real.sqrt (κ * N + R₂) := Real.sqrt_le_sqrt hfr
  nlinarith [h0, htr, h2, hB, mul_le_mul_of_nonneg_left h2 hB]

/-! ## Seam-agnostic count certificates (for the multiplicity-aware rank–trace variants:
the zero-side inequality arrives as the hypothesis h0, so the same algebra serves N₀* (seamA),
the c = 2 multiplicity-aware N₀ˢ seam, and — in halved form below — the c = 3 N_d seam). -/

/-- The moment certificate with the fixed-T seam inequality abstracted: any count `lower`
satisfying the seam shape eventually obeys the (2 − κ − ε) certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variant00852f36a21ec426dc25b87d5dac770515aae2a6fd7f331900c9b69c666bf1ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Certificate/Variant00852f36a21ec426dc25b87d5dac770515aae2a6fd7f331900c9b69c666bf1ca.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f5f341bcf55c0dca2ed9d176a0e76702b18cfea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
