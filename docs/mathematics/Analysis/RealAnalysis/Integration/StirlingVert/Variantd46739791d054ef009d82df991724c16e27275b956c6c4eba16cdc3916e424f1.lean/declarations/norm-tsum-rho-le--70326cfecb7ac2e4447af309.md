# norm_tsum_rho_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e07a51e-d7de-d042-3fe2-cb4ff1b659f1",
  "kind": "theorem",
  "lexical_name": "norm_tsum_rho_le",
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
  "slug": "norm-tsum-rho-le--70326cfecb7ac2e4447af309",
  "source": {
    "blob": "a211e2f2ab84bc0f9b013a4671fd6d19c6675ef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 350,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70326cfecb7ac2e4447af309dfa54917ec6a4ee5800150e27c4fa29b299bf587",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e07a51e-d7de-d042-3fe2-cb4ff1b659f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tsum_rho_le (hw : 0 < w.re) (ht : 1 / 2 ≤ |w.im|) :
    ‖∑' n, rho w n‖ ≤ 2 / w.im ^ 2 := by
  have ht0 : 0 < |w.im| := by linarith
  have hS := tsum_inv_norm_sq_le hw ht
  calc ‖∑' n, rho w n‖ ≤ ∑' n, ‖rho w n‖ := norm_tsum_le_tsum_norm (summable_norm_rho hw ht)
    _ ≤ ∑' n : ℕ, (1 / |w.im|) * (1 / ‖(n : ℂ) + 1 + w‖ ^ 2) := by
        refine Summable.tsum_le_tsum (fun n => ?_) (summable_norm_rho hw ht)
          ((summable_inv_norm_sq hw).mul_left _)
        refine le_trans (norm_rho_le hw ht n) (le_of_eq ?_)
        field_simp
    _ = (1 / |w.im|) * ∑' n : ℕ, 1 / ‖(n : ℂ) + 1 + w‖ ^ 2 := tsum_mul_left
    _ ≤ (1 / |w.im|) * (2 / |w.im|) := by gcongr
    _ = 2 / w.im ^ 2 := by rw [← sq_abs]; field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StirlingVert/Variantd46739791d054ef009d82df991724c16e27275b956c6c4eba16cdc3916e424f1.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a211e2f2ab84bc0f9b013a4671fd6d19c6675ef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
