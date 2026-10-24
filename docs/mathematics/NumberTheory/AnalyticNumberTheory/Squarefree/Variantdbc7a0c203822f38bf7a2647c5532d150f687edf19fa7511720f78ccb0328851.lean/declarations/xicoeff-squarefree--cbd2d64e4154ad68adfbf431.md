# xiCoeff_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b432b40601406036d22e5331727584d8c3c0dfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25896eef-7af6-9b0f-45eb-1609c36a9bf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1904e860-39bc-c343-59ed-35492fc1cca4",
  "kind": "theorem",
  "lexical_name": "xiCoeff_squarefree",
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
  "slug": "xicoeff-squarefree--cbd2d64e4154ad68adfbf431",
  "source": {
    "blob": "1b432b40601406036d22e5331727584d8c3c0dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 194,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd2d64e4154ad68adfbf43140c3f1407b0fbfd0da4420f99994b8a8446aaf6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1904e860-39bc-c343-59ed-35492fc1cca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiCoeff_squarefree {N : ℕ} (hN : Squarefree N) (hk : 2 ≤ ω N) (Λs : ℂ) :
    xiCoeff Λs N = ((ω N - 1).factorial : ℂ) * (Λs⁻¹) ^ (ω N) * (Real.log N : ℂ)
                     * ((∏ p ∈ N.primeFactors, Real.log p : ℝ) : ℂ) := by
  have hΩ : Ω N = ω N := cardFactors_eq_cardDistinctFactors_of_squarefree hN
  have hΛ0 : Λ N = 0 := vonMangoldt_eq_zero_of_cardDistinctFactors_ne_one (by omega)
  unfold xiCoeff
  rw [hΛ0, hΩ, Complex.ofReal_zero, neg_zero, zero_add]
  rw [sum_eq_single_of_mem (ω N - 1) (mem_range.mpr (by omega))]
  · rw [lamLogConv_apply_squarefree hN, if_pos (by omega),
      show ω N - 1 + 1 = ω N by omega]
    push_cast
    ring
  · intro j _ hj
    rw [lamLogConv_apply_squarefree hN, if_neg (by omega), Complex.ofReal_zero, mul_zero]

/-- C(p;Λ⋆) = −log p + Λ⋆^{−1} log²p. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Squarefree/Variantdbc7a0c203822f38bf7a2647c5532d150f687edf19fa7511720f78ccb0328851.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b432b40601406036d22e5331727584d8c3c0dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
