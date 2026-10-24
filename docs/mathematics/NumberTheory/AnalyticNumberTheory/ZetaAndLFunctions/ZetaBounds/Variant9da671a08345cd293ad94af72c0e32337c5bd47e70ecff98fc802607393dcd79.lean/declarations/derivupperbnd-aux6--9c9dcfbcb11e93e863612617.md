# DerivUpperBnd_aux6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:164c626a-80f8-e9dd-aa1b-f338af4613ef",
  "kind": "theorem",
  "lexical_name": "DerivUpperBnd_aux6",
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
  "slug": "derivupperbnd-aux6--9c9dcfbcb11e93e863612617",
  "source": {
    "blob": "1221067f6024cf817e255715555eb90609acba6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2048,
    "line": 2035,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9dcfbcb11e93e863612617771c00e20f55e9ff1175d095c1238368dd607ca5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:164c626a-80f8-e9dd-aa1b-f338af4613ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2035–2048.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DerivUpperBnd_aux6 {A σ t : ℝ} (t_gt : 3 < |t|) (hσ : σ ∈ Icc (1 - A / |t|.log) 2) :
    let N := ⌊|t|⌋₊;
    0 < N → ↑N ≤ |t| → ↑σ + ↑t * I ≠ 1 → 1 / 2 < σ →
    2 * |t| * ↑N ^ (-σ) / σ ≤ 2 * (8 * A.exp) := by
  intro N Npos N_le_t neOne σ_gt
  rw [mul_div_assoc, mul_assoc]
  apply mul_le_mul_iff_right₀ (by norm_num) |>.mpr
  have h := UpperBnd_aux6 t_gt ⟨σ_gt, hσ.2⟩ neOne Npos N_le_t |>.2.2
  apply le_trans (mul_le_mul_iff_right₀ (a := |t|) (by positivity) |>.mpr h) ?_
  rw [← mul_assoc, mul_comm _ 8, mul_assoc]
  gcongr
  convert UpperBnd_aux2 t_gt hσ.1 using 1
  rw [mul_comm, ← Real.rpow_add_one (by positivity)]; ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean#L2035).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1221067f6024cf817e255715555eb90609acba6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
