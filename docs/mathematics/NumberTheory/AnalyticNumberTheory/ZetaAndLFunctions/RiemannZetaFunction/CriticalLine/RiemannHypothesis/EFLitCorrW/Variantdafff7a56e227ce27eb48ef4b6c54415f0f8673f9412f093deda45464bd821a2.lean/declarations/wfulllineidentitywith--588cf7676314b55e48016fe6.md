# WFullLineIdentityWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec61bfd388bb418094d5cff0be537a18a337fef2611753e48b0183f96883b321",
  "kind": "def",
  "lexical_name": "WFullLineIdentityWith",
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
  "slug": "wfulllineidentitywith--588cf7676314b55e48016fe6",
  "source": {
    "blob": "7e784373cdb1ae478234d41ed95a5fbe029cd140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:588cf7676314b55e48016fe689ca51feed79803eb1212931e375e09f30f02e33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec61bfd388bb418094d5cff0be537a18a337fef2611753e48b0183f96883b321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WFullLineIdentityWith {t₀ : ℝ} (hZ : WZerosInStrip t₀) (hs : WSeam t₀) (c : ℝ) (E₀ : Finset ℂ) : Prop :=
  ∀ (k : ℝ → ℂ), ContDiff ℝ 2 k → HasCompactSupport k →
    Summable (fun ρ : (wZeros hZ hs).carrier => (wMult (ρ : ℂ) : ℂ) * Hfn k ρ) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c:ℂ) + t * I) + Hfn k (1 - c - t * I))
        * (L2 ((c:ℂ) + t * I) + logDeriv hardyW ((c:ℂ) + t * I)))
      = (∑' ρ : (wZeros hZ hs).carrier, (wMult (ρ : ℂ) : ℂ) * Hfn k ρ)
        + (∑ ρ ∈ E₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ)
        - (3/2 : ℂ) * (Hfn k 0 + Hfn k 1)

/-- The full-line identity for F_𝒵 = L₂ + W′/W, with the finite low-zero set E₀. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFLitCorrW/Variantdafff7a56e227ce27eb48ef4b6c54415f0f8673f9412f093deda45464bd821a2.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e784373cdb1ae478234d41ed95a5fbe029cd140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
