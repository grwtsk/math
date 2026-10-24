# isBigO_norm_Icc_restrict_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aab09219a031b27024db0168a02124f3ec16c9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d77b3f8-82e0-1583-7a9b-085a87739599",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86de3a68-606f-988e-cd89-5e31368d5c18",
  "kind": "theorem",
  "lexical_name": "isBigO_norm_Icc_restrict_atBot",
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
  "slug": "isbigo-norm-icc-restrict-atbot--581b2760ce6a0d9f5e337ace",
  "source": {
    "blob": "aab09219a031b27024db0168a02124f3ec16c9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 179,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:581b2760ce6a0d9f5e337ace99b2f95465a0ef355679502620da6685f032b740",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86de3a68-606f-988e-cd89-5e31368d5c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_norm_Icc_restrict_atBot {f : C(ℝ, E)} {b : ℝ} (hb : 0 < b)
    (hf : IsBigO atBot f fun x : ℝ => |x| ^ (-b)) (R S : ℝ) :
    IsBigO atBot (fun x : ℝ => ‖f.restrict (Icc (x + R) (x + S))‖) fun x : ℝ => |x| ^ (-b) := by
  have h1 : IsBigO atTop (f.comp (ContinuousMap.mk _ continuous_neg)) fun x : ℝ => |x| ^ (-b) := by
    convert hf.comp_tendsto tendsto_neg_atTop_atBot using 1
    ext1 x; simp only [Function.comp_apply, abs_neg]
  have h2 := (isBigO_norm_Icc_restrict_atTop hb h1 (-S) (-R)).comp_tendsto tendsto_neg_atBot_atTop
  have : (fun x : ℝ => |x| ^ (-b)) ∘ Neg.neg = fun x : ℝ => |x| ^ (-b) := by
    ext1 x; simp only [Function.comp_apply, abs_neg]
  rw [this] at h2
  refine' (isBigO_of_le _ fun x => _).trans h2
  -- equality holds, but less work to prove `≤` alone
  rw [norm_norm, Function.comp_apply, norm_norm, ContinuousMap.norm_le _ (norm_nonneg _)]
  rintro ⟨x, hx⟩
  rw [ContinuousMap.restrict_apply_mk]
  refine' (le_of_eq _).trans (ContinuousMap.norm_coe_le_norm _ ⟨-x, _⟩)
  rw [ContinuousMap.restrict_apply_mk, ContinuousMap.comp_apply, ContinuousMap.coe_mk,
    ContinuousMap.coe_mk, neg_neg]
  exact ⟨by linarith [hx.2], by linarith [hx.1]⟩
set_option linter.uppercaseLean3 false in
#align is_O_norm_Icc_restrict_at_bot isBigO_norm_Icc_restrict_atBot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab09219a031b27024db0168a02124f3ec16c9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
