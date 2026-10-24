# testWeight_neg_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d59e4ad4-1c7a-fde2-e2c6-697e1d4404c8",
  "kind": "theorem",
  "lexical_name": "testWeight_neg_norm_le",
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
  "slug": "testweight-neg-norm-le--c2eeca00ea10522ce817646b",
  "source": {
    "blob": "542c3d9fe63913f0463ed0dfba2b70e0485d588a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1078,
    "line": 1052,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2eeca00ea10522ce817646b0c26218f80ce1f7ee82eed09a5c49de1fb4946cc",
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

Occurrence: `result:d59e4ad4-1c7a-fde2-e2c6-697e1d4404c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1052–1078.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testWeight_neg_norm_le (hPf : FamilyHyps Pf) :
    ∃ C T₁ : ℝ, 0 < C ∧ ∀ T : ℝ, T₁ ≤ T → ∀ (k l : ℤ) (t : ℝ),
      ‖Hfn (fun u => kfun (Pf T) T k l (-u)) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T ^ 2 /
              ((1 + (t + (Pf T).tau T k) ^ 2) * (1 + (t + (Pf T).tau T l) ^ 2)) ∧
      (|t + (Pf T).tau T k| + |t + (Pf T).tau T l|)
          * ‖Hfn (fun u => kfun (Pf T) T k l (-u)) ((5 / 4 : ℂ) + t * I)‖
          ≤ C * (Pf T).X T ^ (3 / 4 : ℝ) * (Pf T).L T /
              ((1 + (t + (Pf T).tau T k) ^ 2) * (1 + (t + (Pf T).tau T l) ^ 2)) := by
  obtain ⟨C, T₁, hC, hW⟩ := hPf.windowAt
  refine ⟨4 * (1 + C) ^ 2, T₁, by positivity, fun T hT k l t => ⟨?_, ?_⟩⟩
  · refine ((hW T hT).norm_Hfn_kfun_neg_le k l t).trans ?_
    have hXr : 0 ≤ (Pf T).X T ^ (3 / 4 : ℝ) := Real.rpow_nonneg (hW T hT).X_pos.le _
    have hL := (hW T hT).L_pos
    apply div_le_div_of_nonneg_right _ (by positivity)
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    apply mul_le_mul_of_nonneg_right _ hXr
    nlinarith [sq_nonneg (1 + C)]
  · refine ((hW T hT).moment_norm_Hfn_kfun_neg_le k l t).trans ?_
    have hXr : 0 ≤ (Pf T).X T ^ (3 / 4 : ℝ) := Real.rpow_nonneg (hW T hT).X_pos.le _
    have hL := (hW T hT).L_pos
    apply div_le_div_of_nonneg_right _ (by positivity)
    apply mul_le_mul_of_nonneg_right _ hL.le
    apply mul_le_mul_of_nonneg_right _ hXr
    nlinarith [sq_nonneg (1 + C)]

/-- **(W4)** on the real line: real-valued product formula, integrable, ∫‖·‖ ≤ C L²/(1+(τ_k−τ_l)²). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TestWeight/Variantef42fd98e302c8866375d0eec7eadfc76b20bf393f19a1f4cd22b3607ad91ef1.lean#L1052).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `542c3d9fe63913f0463ed0dfba2b70e0485d588a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
