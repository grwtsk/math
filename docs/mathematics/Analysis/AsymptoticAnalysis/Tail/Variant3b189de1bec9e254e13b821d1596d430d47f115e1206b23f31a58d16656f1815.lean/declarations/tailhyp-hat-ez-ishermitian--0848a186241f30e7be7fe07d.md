# TailHyp.hat_Ez_isHermitian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 559,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c950f406-8004-1a7d-a4b6-c57e3d0b65b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:733d4e63-b679-82db-d555-83bb1a675d76",
  "kind": "lemma",
  "lexical_name": "TailHyp.hat_Ez_isHermitian",
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
  "slug": "tailhyp-hat-ez-ishermitian--0848a186241f30e7be7fe07d",
  "source": {
    "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 559,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0848a186241f30e7be7fe07d442e64d1093da83c6fc0461bf7256dccdba593b9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:733d4e63-b679-82db-d555-83bb1a675d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TailHyp.hat_Ez_isHermitian (H : TailHyp Z P T A₀ C₁)
    (hconj : ∀ z : ℂ, P.phiHat T ((starRingEnd ℂ) z) = (starRingEnd ℂ) (P.phiHat T z)) :
    (P.hat T (Z.Ez P T)).IsHermitian := by
  have h := isHermitian_real_smul (H.Ez_isHermitian hconj) (P.a T * P.L T ^ 2)⁻¹
  unfold Params.hat
  have e : ((P.a T * P.L T ^ 2)⁻¹ : ℂ) = (((P.a T * P.L T ^ 2)⁻¹ : ℝ) : ℂ) := by push_cast; rfl
  rw [e]; exact h

end Hermitian

/-! ### Exports in the shapes consumed by Zeta23/Assembly.lean (Assembly.TailInputs) -/

section Export

open Filter

variable {Z : ZeroConfig} {P : Params} {T A₀ C₁ : ℝ}

/-- [prop:tail] packaged as Assembly.TailInputs at height T, with
θ₀ = theta0 A₀ (e^{L/4} C₁) T and B := ‖Ê‖₁ = traceNorm Ê. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
