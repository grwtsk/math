# LFunction_apply_one_ne_zero_of_quadratic

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
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cac5b38-8ad7-82ae-c562-420f21ad41a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30bf79d2-871e-c721-1566-9f0815a6fd5d",
  "kind": "theorem",
  "lexical_name": "LFunction_apply_one_ne_zero_of_quadratic",
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
  "slug": "lfunction-apply-one-ne-zero-of-quadratic--29a2ff07783a3b666c0b4c7a",
  "source": {
    "blob": "578c80f866368f9167a44404c0c4bc09387509b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 195,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29a2ff07783a3b666c0b4c7a97a4419c8ebd3e20dc417eeb7cb2abf8107c76a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30bf79d2-871e-c721-1566-9f0815a6fd5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem LFunction_apply_one_ne_zero_of_quadratic {χ : DirichletCharacter ℂ N}
    (hχ : χ ^ 2 = 1) (χ_ne : χ ≠ 1) :
    χ.LFunction 1 ≠ 0 := by
  intro hL
  -- construct a "bad character" and put together a contradiction.
  let B : BadChar N := {χ := χ, χ_sq := hχ, hχ := hL, χ_ne := χ_ne}
  refine B.F_neg_two.not_gt ?_
  refine ArithmeticFunction.LSeries_positive_of_differentiable_of_eqOn (zetaMul_nonneg hχ)
    (χ.isMultiplicative_zetaMul.map_one ▸ zero_lt_one) B.F_differentiable ?_
    (fun _ ↦ B.F_eq_LSeries) _
  exact LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable
    fun _ a ↦ χ.LSeriesSummable_zetaMul a

end quadratic

section nonvanishing

variable (χ : DirichletCharacter ℂ N)

-- This is the key positivity lemma that is used to show that the L-function
-- of a Dirichlet character `χ` does not vanish for `s.re ≥ 1` (unless `χ^2 = 1` and `s = 1`).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578c80f866368f9167a44404c0c4bc09387509b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
