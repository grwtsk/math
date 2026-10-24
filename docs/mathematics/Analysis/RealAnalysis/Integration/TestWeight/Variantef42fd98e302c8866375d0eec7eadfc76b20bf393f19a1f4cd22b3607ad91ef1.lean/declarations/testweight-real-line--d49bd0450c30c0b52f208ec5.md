# testWeight_real_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:178516a1-6322-4f48-0f05-d3b15c5167e9",
  "kind": "theorem",
  "lexical_name": "testWeight_real_line",
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
  "slug": "testweight-real-line--d49bd0450c30c0b52f208ec5",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1092,
    "line": 1079,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d49bd0450c30c0b52f208ec503118c3f095681573c53dfc3564dfa1cd26d57d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:178516a1-6322-4f48-0f05-d3b15c5167e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1079–1092.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testWeight_real_line (hPf : FamilyHyps Pf) :
    ∃ C T₁ : ℝ, 0 < C ∧ ∀ T : ℝ, T₁ ≤ T → ∀ k l : ℤ,
      (∀ τ : ℝ, paperFT (kfun (Pf T) T k l) τ
          = (((Pf T).phiHatR T (τ - (Pf T).tau T k) * (Pf T).phiHatR T (τ - (Pf T).tau T l) : ℝ) : ℂ)) ∧
      Integrable (fun τ : ℝ => paperFT (kfun (Pf T) T k l) τ) ∧
      ∫ τ : ℝ, ‖paperFT (kfun (Pf T) T k l) τ‖
          ≤ C * (Pf T).L T ^ 2 / (1 + ((Pf T).tau T k - (Pf T).tau T l) ^ 2) := by
  obtain ⟨C, T₁, hC, hW⟩ := hPf.windowAt
  exact ⟨32 * Real.pi * (1 + C) ^ 2, T₁, by positivity, fun T hT k l =>
    ⟨(hW T hT).paperFT_kfun_ofReal k l, (hW T hT).integrable_paperFT_kfun_ofReal k l,
      (hW T hT).integral_norm_paperFT_kfun_ofReal_le k l⟩⟩

/-- **(W6)** for the family: integrability, ∫‖H‖, ∫(1+|t−τ⋆|)‖H‖ ≤ C X^{3/4}L²/(1+Δ²), and the far tail
≤ C X^{3/4} L²/T² (for T ≤ τ_k, τ_l ≤ 2T); plus the same four for the mirrored weight around −τ⋆. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L1079).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
