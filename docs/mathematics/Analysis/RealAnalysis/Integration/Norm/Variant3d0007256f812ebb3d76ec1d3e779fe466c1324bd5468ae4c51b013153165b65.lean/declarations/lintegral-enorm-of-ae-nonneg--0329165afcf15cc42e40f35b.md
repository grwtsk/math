# lintegral_enorm_of_ae_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7850d5e0-de88-5e3f-6c7c-a0bc5df95f42",
  "kind": "theorem",
  "lexical_name": "lintegral_enorm_of_ae_nonneg",
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
  "slug": "lintegral-enorm-of-ae-nonneg--0329165afcf15cc42e40f35b",
  "source": {
    "blob": "bae2b3f7427d8ee7a8c4b332c14aa6952c981121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0329165afcf15cc42e40f35b4cf533011eaed5614db6ac35e9c96cdc71b9168a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7850d5e0-de88-5e3f-6c7c-a0bc5df95f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_enorm_of_ae_nonneg {f : α → ℝ} (h_nonneg : 0 ≤ᵐ[μ] f) :
    ∫⁻ x, ‖f x‖ₑ ∂μ = ∫⁻ x, .ofReal (f x) ∂μ := by
  apply lintegral_congr_ae
  filter_upwards [h_nonneg] with x hx
  rw [Real.enorm_eq_ofReal hx]

@[deprecated (since := "2025-01-17")]
alias lintegral_nnnorm_eq_of_ae_nonneg := lintegral_enorm_of_ae_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bae2b3f7427d8ee7a8c4b332c14aa6952c981121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
