# opNorm_le_of_shell'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "060517c681bcfcc0eea848e8360e572433349daa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9296191f-ab80-5b9f-5d4a-2e713b552a74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7941f93-7d5c-5ea4-c3af-d120cd223b23",
  "kind": "theorem",
  "lexical_name": "opNorm_le_of_shell'",
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
  "slug": "opnorm-le-of-shell--431de8baea7a9baae687db4c",
  "source": {
    "blob": "060517c681bcfcc0eea848e8360e572433349daa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 241,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:431de8baea7a9baae687db4c331a48ffa55ccd19975aea0974cbab53cc4e5ad8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7941f93-7d5c-5ea4-c3af-d120cd223b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opNorm_le_of_shell' {f : E →SL[σ₁₂] F} {ε C : ℝ} (ε_pos : 0 < ε) (hC : 0 ≤ C) {c : 𝕜}
    (hc : ‖c‖ < 1) (hf : ∀ x, ε * ‖c‖ ≤ ‖x‖ → ‖x‖ < ε → ‖f x‖ ≤ C * ‖x‖) : ‖f‖ ≤ C := by
  by_cases h0 : c = 0
  · refine opNorm_le_of_ball ε_pos hC fun x hx => hf x ?_ ?_
    · simp [h0]
    · rwa [ball_zero_eq] at hx
  · rw [← inv_inv c, norm_inv, inv_lt_one₀ (norm_pos_iff.2 <| inv_ne_zero h0)] at hc
    refine opNorm_le_of_shell ε_pos hC hc ?_
    rwa [norm_inv, div_eq_mul_inv, inv_inv]


/-- For a continuous real linear map `f`, if one controls the norm of every `f x`, `‖x‖ = 1`, then
one controls the norm of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant4b8d7c2f12538a80ad4c537058a32da0676bc956aa6ad655a98841646cf6c3fc.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `060517c681bcfcc0eea848e8360e572433349daa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
