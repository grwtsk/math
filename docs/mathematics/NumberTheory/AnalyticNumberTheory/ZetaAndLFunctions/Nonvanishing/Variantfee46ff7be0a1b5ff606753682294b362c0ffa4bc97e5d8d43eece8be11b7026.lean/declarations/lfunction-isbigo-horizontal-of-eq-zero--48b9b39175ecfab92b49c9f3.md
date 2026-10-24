# LFunction_isBigO_horizontal_of_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "578c80f866368f9167a44404c0c4bc09387509b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00f749a5-8e0d-8a63-f400-44ac32d53187",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:025f8422-15a2-a22a-fa69-66e5bd141c52",
  "kind": "lemma",
  "lexical_name": "LFunction_isBigO_horizontal_of_eq_zero",
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
  "slug": "lfunction-isbigo-horizontal-of-eq-zero--48b9b39175ecfab92b49c9f3",
  "source": {
    "blob": "578c80f866368f9167a44404c0c4bc09387509b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 338,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48b9b39175ecfab92b49c9f36de550a69a7a9a4ed1ddba090319ce2cb05a1dc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:025f8422-15a2-a22a-fa69-66e5bd141c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LFunction_isBigO_horizontal_of_eq_zero {y : ℝ} (hy : y ≠ 0 ∨ χ ≠ 1)
    (h : LFunction χ (1 + I * y) = 0) :
    (fun x : ℝ ↦ LFunction χ (1 + x + I * y)) =O[𝓝[>] 0] fun x : ℝ ↦ (x : ℂ) := by
  simp_rw [add_comm (1 : ℂ), add_assoc]
  have := (χ.differentiableAt_LFunction _ <| one_add_I_mul_ne_one_or χ hy).hasDerivAt
  rw [← zero_add (1 + _)] at this
  simpa only [zero_add, h, sub_zero]
    using (Complex.isBigO_comp_ofReal_nhds
      (this.comp_add_const 0 _).differentiableAt.isBigO_sub) |>.mono nhdsWithin_le_nhds

-- intermediate statement, special case of the next theorem
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578c80f866368f9167a44404c0c4bc09387509b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
