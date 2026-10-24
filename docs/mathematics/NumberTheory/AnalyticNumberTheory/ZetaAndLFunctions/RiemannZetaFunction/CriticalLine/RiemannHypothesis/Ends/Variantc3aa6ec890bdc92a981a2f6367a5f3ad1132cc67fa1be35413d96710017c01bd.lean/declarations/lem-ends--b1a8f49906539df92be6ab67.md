# lem_ends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc87104549a5f19b01b85d510c1b958b6f52132c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3aa6ec890bdc92a981a2f6367a5f3ad1132cc67fa1be35413d96710017c01bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5bf19a8-ea09-2df9-8b2e-708c500c577e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e4acd1c-5358-4f6c-fe86-435aef5657d0",
  "kind": "theorem",
  "lexical_name": "lem_ends",
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
  "slug": "lem-ends--b1a8f49906539df92be6ab67",
  "source": {
    "blob": "dc87104549a5f19b01b85d510c1b958b6f52132c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variantc3aa6ec890bdc92a981a2f6367a5f3ad1132cc67fa1be35413d96710017c01bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1a8f49906539df92be6ab67343fcff2bce200dc9fe9f9522300c2cad080311c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variantc3aa6ec890bdc92a981a2f6367a5f3ad1132cc67fa1be35413d96710017c01bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e4acd1c-5358-4f6c-fe86-435aef5657d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lem_ends (hΓ : Zeta23.GammaFacts) (_hcheb : Zeta23.ChebyshevMertens)
    (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |trGt2A p F - MtotalA p F| ≤ C * (p.L * p.l * Real.log p.l * (p.l ^ 2 + p.X))) := by
  obtain ⟨C, T₁, h1⟩ := lem_ends_nu cϱ lam
  obtain ⟨T₂, h2⟩ := nuBound_eventually lam hΓ hlam.1
  refine ⟨32 * |C|, max (max T₁ T₂) 1, fun p F hplam hT hF => ?_⟩
  have hT1 : T₁ ≤ p.T := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hT
  have hT2 : T₂ ≤ p.T := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hT
  have hν := h2 p hplam hT2
  have hl0 : 0 ≤ p.l := by linarith [hF.one_le_l]
  have hBl : p.l ≤ Bconst p := by unfold Bconst; have := Real.sqrt_nonneg p.X; linarith
  have h := h1 p F (Bconst p) (Zeta23.nuX p.X) hplam hT1 hF (nuX_continuous hΓ hF.toCoreW) hν hBl
  have hB := Bconst_sq_le p hl0
  have e : trGt2A p F - MtotalA p F
      = (p.L)⁻¹ ^ 2 * ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Zeta23.nuX p.X) p F k l ^ 2
        - MtotalNu (Zeta23.nuX p.X) p F := rfl
  show |trGt2A p F - MtotalA p F| ≤ _
  rw [e]
  refine h.trans ?_
  have hnn : 0 ≤ p.L * p.l * Real.log p.l := by
    have := hF.L_pos
    have : 0 ≤ Real.log p.l := Real.log_nonneg hF.one_le_l
    positivity
  calc C * (p.L * p.l * Real.log p.l * Bconst p ^ 2)
      ≤ |C| * (p.L * p.l * Real.log p.l * Bconst p ^ 2) :=
        mul_le_mul_of_nonneg_right (le_abs_self C) (by positivity)
    _ ≤ |C| * (p.L * p.l * Real.log p.l * (32 * (p.l ^ 2 + p.X))) := by gcongr
    _ = 32 * |C| * (p.L * p.l * Real.log p.l * (p.l ^ 2 + p.X)) := by ring

end Main

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variantc3aa6ec890bdc92a981a2f6367a5f3ad1132cc67fa1be35413d96710017c01bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ends/Variantc3aa6ec890bdc92a981a2f6367a5f3ad1132cc67fa1be35413d96710017c01bd.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc87104549a5f19b01b85d510c1b958b6f52132c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
