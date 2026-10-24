# abs_Kfun_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3ea1524-8b17-1be9-5f16-3f4b094bfe62",
  "kind": "theorem",
  "lexical_name": "abs_Kfun_le",
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
  "slug": "abs-kfun-le--c6de3baf343cae07cae64a22",
  "source": {
    "blob": "76395d7f7e7303c94775bff76ac7487ba1a94ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 591,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6de3baf343cae07cae64a226fc3d0bb6b71295e3dc57c81a7dcdd780cbe6c6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ea1524-8b17-1be9-5f16-3f4b094bfe62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_Kfun_le (hF : LocalHypsCoreW cϱ p F) (τ τ' : ℝ) : |Kfun p F τ τ'| ≤ p.L ^ 2 := by
  have hCS := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ
    (fun k : Fin p.d => F.phiHat (τ - p.tau k)) (fun k : Fin p.d => F.phiHat (τ' - p.tau k))
  have hbound : ∀ σ : ℝ, ∑ k : Fin p.d, F.phiHat (σ - p.tau k) ^ 2 ≤ F.a * p.L ^ 2 := by
    intro σ
    have h0 := rho_nonneg hF σ
    unfold rho at h0
    linarith
  have hs1 : 0 ≤ ∑ k : Fin p.d, F.phiHat (τ' - p.tau k) ^ 2 :=
    Finset.sum_nonneg fun k _ => sq_nonneg _
  have haL : F.a * p.L ^ 2 ≤ p.L ^ 2 := by
    nlinarith [hF.a_le_one, hF.a_pos.le, sq_nonneg p.L]
  have hK2 : Kfun p F τ τ' ^ 2 ≤ (p.L ^ 2) ^ 2 := by
    unfold Kfun
    calc (∑ k : Fin p.d, F.phiHat (τ - p.tau k) * F.phiHat (τ' - p.tau k)) ^ 2
        ≤ (∑ k : Fin p.d, F.phiHat (τ - p.tau k) ^ 2)
          * (∑ k : Fin p.d, F.phiHat (τ' - p.tau k) ^ 2) := hCS
      _ ≤ (p.L ^ 2) * (p.L ^ 2) :=
          mul_le_mul ((hbound τ).trans haL) ((hbound τ').trans haL) hs1 (sq_nonneg _)
      _ = (p.L ^ 2) ^ 2 := (sq _).symm
  nlinarith [abs_nonneg (Kfun p F τ τ'), sq_abs (Kfun p F τ τ'), sq_nonneg p.L]

/-- `|K_∞(τ,τ')| = L|Φ(τ−τ')| ≤ L² ` (LocalHyps.Phi_le_L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76395d7f7e7303c94775bff76ac7487ba1a94ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
