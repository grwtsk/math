# locally_lipschitz_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f5fd9c-cecc-8598-ffe4-10263a70e59e",
  "kind": "theorem",
  "lexical_name": "locally_lipschitz_exp",
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
  "slug": "locally-lipschitz-exp--05509fe2bff8dfe414343b3d",
  "source": {
    "blob": "6292e48b94f7cf07b3bfcfcf263bcadc31717e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05509fe2bff8dfe414343b3dd766a8bce09ca4e32224aaa09fe80991d0a91227",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f5fd9c-cecc-8598-ffe4-10263a70e59e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locally_lipschitz_exp {r : ℝ} (hr_nonneg : 0 ≤ r) (hr_le : r ≤ 1) (x y : ℂ)
    (hyx : ‖y - x‖ < r) : ‖exp y - exp x‖ ≤ (1 + r) * ‖exp x‖ * ‖y - x‖ := by
  have hy_eq : y = x + (y - x) := by abel
  have hyx_sq_le : ‖y - x‖ ^ 2 ≤ r * ‖y - x‖ := by
    rw [pow_two]
    exact mul_le_mul hyx.le le_rfl (norm_nonneg _) hr_nonneg
  have h_sq : ∀ z, ‖z‖ ≤ 1 → ‖exp (x + z) - exp x‖ ≤ ‖z‖ * ‖exp x‖ + ‖exp x‖ * ‖z‖ ^ 2 := by
    intro z hz
    have : ‖exp (x + z) - exp x - z • exp x‖ ≤ ‖exp x‖ * ‖z‖ ^ 2 := exp_bound_sq x z hz
    rw [← sub_le_iff_le_add', ← norm_smul z]
    exact (norm_sub_norm_le _ _).trans this
  calc
    ‖exp y - exp x‖ = ‖exp (x + (y - x)) - exp x‖ := by nth_rw 1 [hy_eq]
    _ ≤ ‖y - x‖ * ‖exp x‖ + ‖exp x‖ * ‖y - x‖ ^ 2 := h_sq (y - x) (hyx.le.trans hr_le)
    _ ≤ ‖y - x‖ * ‖exp x‖ + ‖exp x‖ * (r * ‖y - x‖) :=
      (add_le_add_left (mul_le_mul le_rfl hyx_sq_le (sq_nonneg _) (norm_nonneg _)) _)
    _ = (1 + r) * ‖exp x‖ * ‖y - x‖ := by ring

-- Porting note: proof by term mode `locally_lipschitz_exp zero_le_one le_rfl x`
-- doesn't work because `‖y - x‖` and `dist y x` don't unify
@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6292e48b94f7cf07b3bfcfcf263bcadc31717e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
