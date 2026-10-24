# ae_le_lpNorm_exponent_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:623eb025-535a-bc5a-2e14-b4fec192b95f",
  "kind": "lemma",
  "lexical_name": "ae_le_lpNorm_exponent_top",
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
  "slug": "ae-le-lpnorm-exponent-top--b4b95eee26ece77be009dddb",
  "source": {
    "blob": "54c2683f0b3e0613206faa219f2b20000dce3f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4b95eee26ece77be009dddb4e7f5def337889f327894344c621762fd3e9d07d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:623eb025-535a-bc5a-2e14-b4fec192b95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_le_lpNorm_exponent_top (hf : MemLp f ∞ μ) : ∀ᵐ x ∂μ, ‖f x‖ ≤ lpNorm f ∞ μ := by
  have htop : eLpNormEssSup f μ ≠ ∞ := by
    simpa only [eLpNorm_exponent_top hf.aestronglyMeasurable] using hf.eLpNorm_ne_top
  filter_upwards [ae_le_eLpNormEssSup (f := f) (μ := μ)] with x hx
  rw [← toReal_enorm, ← toReal_eLpNorm,
    eLpNorm_exponent_top hf.aestronglyMeasurable]
  exact (ENNReal.toReal_le_toReal enorm_ne_top htop).2 hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantfd6b0dd3f909463a627ca86bde90612e326f2fa430a0697b2a954e7a56d72874.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54c2683f0b3e0613206faa219f2b20000dce3f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
