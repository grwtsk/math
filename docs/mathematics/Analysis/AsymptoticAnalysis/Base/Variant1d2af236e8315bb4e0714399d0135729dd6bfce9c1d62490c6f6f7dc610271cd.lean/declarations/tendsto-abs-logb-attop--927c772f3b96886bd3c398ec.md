# tendsto_abs_logb_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8970cd2d8fe0116284f84a196343ded93289045b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 452,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37813586-95a3-e2ce-3167-744ed85d3242",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3406d73-3fad-0c88-d8b0-1d466057940d",
  "kind": "lemma",
  "lexical_name": "tendsto_abs_logb_atTop",
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
  "slug": "tendsto-abs-logb-attop--927c772f3b96886bd3c398ec",
  "source": {
    "blob": "8970cd2d8fe0116284f84a196343ded93289045b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 452,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:927c772f3b96886bd3c398ec573148a3da97b50b677c0f4baee030bdc2af6d42",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3406d73-3fad-0c88-d8b0-1d466057940d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_abs_logb_atTop (hb : b ≠ -1 ∧ b ≠ 0 ∧ b ≠ 1) :
    Tendsto (|logb b ·|) atTop atTop := by
  wlog hb₀ : 0 < b generalizing b
  · exact (this (b := -b) (by simp [hb, neg_eq_iff_eq_neg]) (by linarith +splitNe)).congr (by simp)
  wlog hb₁ : 1 < b generalizing b
  · exact (this (b := b⁻¹) (by simp [hb, inv_eq_iff_eq_inv, inv_neg]) (by simpa)
      ((one_lt_inv₀ hb₀).2 (by linarith +splitNe))).congr (by simp)
  refine (tendsto_logb_atTop hb₁).congr' ?_
  filter_upwards [eventually_ge_atTop 1] with x hx₁
  rw [abs_of_nonneg]
  exact logb_nonneg hb₁ hx₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8970cd2d8fe0116284f84a196343ded93289045b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
