# signed_settlement_iff_literal_P04

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4962cecd8f7988f1032569f5a9c703296353675a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21d6f7ae-016f-4d15-bb89-2ef9fc147b44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "4962cecd8f7988f1032569f5a9c703296353675a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/Analysis/Asymptotics/QuadraticKernelEnergyEquivalence.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c909bf6-85b4-8b8c-fc3f-d4bfe6c2ab38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34213fba-676b-2914-d8d4-d1cfb2788fc1",
  "kind": "theorem",
  "lexical_name": "signed_settlement_iff_literal_P04",
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
  "slug": "signed-settlement-iff-literal-p04--c0025f95c6e395eb94f99275",
  "source": {
    "blob": "4962cecd8f7988f1032569f5a9c703296353675a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 19,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0025f95c6e395eb94f99275da8b49bfe1bca834ee8bb80c1c52490582a6ef12",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence__SourceOccurrence184eefda797211ad3333339f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34213fba-676b-2914-d8d4-d1cfb2788fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_settlement_iff_literal_P04 {c : ℝ} (hc : 1 < c)
    (height : ℝ → ℝ) (heightValid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (identified : Identification c) (tailBound : TailBudget c height) :
    SignedHeadResidueBudget c height ↔ PPNCP04.P04 := by
  constructor
  · exact concrete_route_implies_literal_P04 hc height heightValid identified tailBound
  · rintro ⟨C_X,r_X,hCX,hrX,hCross⟩
    obtain ⟨C_T,r_T,hCT,hrT,hTail⟩ := tailBound
    refine ⟨C_X+C_T,max r_X r_T,add_nonneg hCX hCT,
      le_trans hrX (le_max_left _ _),?_⟩
    intro T hT
    have hb : 1 ≤ 1+T := by linarith
    have ht := (neg_le_abs (tail c (height T) T)).trans (hTail T hT)
    have hx := hCross T hT
    have hxp := Real.rpow_le_rpow_of_exponent_le hb (le_max_left r_X r_T)
    have htp := Real.rpow_le_rpow_of_exponent_le hb (le_max_right r_X r_T)
    change head c (height T) T-PPNCP04.diagonal T ≤ (C_X+C_T)*(1+T)^(max r_X r_T)
    rw [signed_head_return identified hT]
    calc
      PPNCP04.crossEnergy T-tail c (height T) T ≤
          C_X*(1+T)^r_X+C_T*(1+T)^r_T := by linarith
      _ ≤ C_X*(1+T)^(max r_X r_T)+C_T*(1+T)^(max r_X r_T) :=
        add_le_add (mul_le_mul_of_nonneg_left hxp hCX)
          (mul_le_mul_of_nonneg_left htp hCT)
      _ = _ := by ring

end EulerP04RH.ConcreteSettlement

#print axioms EulerP04RH.ConcreteSettlement.signed_settlement_iff_literal_P04
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence__SourceOccurrence184eefda797211ad3333339f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4962cecd8f7988f1032569f5a9c703296353675a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
