# hasFiniteIntegral_of_dominated_convergence_enorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23507877-b4a0-95f5-9125-fa1f8471d866",
  "kind": "theorem",
  "lexical_name": "hasFiniteIntegral_of_dominated_convergence_enorm",
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
  "slug": "hasfiniteintegral-of-dominated-convergence-enorm--51fc254c6ef6c9833427a752",
  "source": {
    "blob": "1d1a0dd67b669301e53b9eb8caba82d6118708d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 358,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51fc254c6ef6c9833427a7520533b22ca38cfe6e120dbf794f074565358b5d02",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23507877-b4a0-95f5-9125-fa1f8471d866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteIntegral_of_dominated_convergence_enorm
    (bound_hasFiniteIntegral : HasFiniteIntegral bound' μ)
    (h_bound : ∀ n, ∀ᵐ a ∂μ, ‖F' n a‖ₑ ≤ bound' a)
    (h_lim : ∀ᵐ a ∂μ, Tendsto (fun n ↦ F' n a) atTop (𝓝 (f' a))) : HasFiniteIntegral f' μ := by
  /- `‖F' n a‖ₑ ≤ bound' a` and `‖F' n a‖ₑ --> ‖f' a‖ₑ` implies `‖f a‖ₑ ≤ bound' a`,
    and so `∫ ‖f'‖ₑ ≤ ∫ bound' < ∞` since `bound'` has finite integral -/
  rw [hasFiniteIntegral_iff_enorm]
  calc
    (∫⁻ a, ‖f' a‖ₑ ∂μ) ≤ ∫⁻ a, bound' a ∂μ :=
      lintegral_mono_ae <| ae_enorm_le_bound h_bound h_lim
    _ < ∞ := bound_hasFiniteIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant03115f747c2e8cea1cf39f3a56956244ea0717fe80731f81753f1ce580254336.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1a0dd67b669301e53b9eb8caba82d6118708d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
