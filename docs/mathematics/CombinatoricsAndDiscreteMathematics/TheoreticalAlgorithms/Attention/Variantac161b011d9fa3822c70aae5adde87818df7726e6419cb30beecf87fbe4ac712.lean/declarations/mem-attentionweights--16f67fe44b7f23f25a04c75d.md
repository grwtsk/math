# mem_attentionWeights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d011e9d-18da-297e-4e96-d8da0c777a5a",
  "kind": "theorem",
  "lexical_name": "mem_attentionWeights",
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
  "slug": "mem-attentionweights--16f67fe44b7f23f25a04c75d",
  "source": {
    "blob": "a3b3d28d81a896b8cc4143835ce6c2799802edf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f67fe44b7f23f25a04c75de78efe7dc7aba5e9c3d207efdabd17362636d446",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d011e9d-18da-297e-4e96-d8da0c777a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_attentionWeights {q_real : List ℝ} {K_real : List (List ℝ)}
    {q : IntervalVector} {K : List IntervalVector}
    (_hq : q_real.length = q.length)
    (hK : K_real.length = K.length)
    -- (membership hypotheses omitted for brevity - same pattern as other theorems)
    (d_k : Nat) (prec : Int) :
    let weights_real := K_real.map (fun k =>
      (List.zipWith (· * ·) q_real k).sum / Real.sqrt d_k)
    let weights := attentionWeights q K d_k prec
    weights_real.length ≤ weights.length := by
  -- weights_real.length = K_real.length = K.length
  -- weights = softmax (K.map ...) prec
  -- softmax scores prec = List.range scores.length |>.map ...
  -- So weights.length = scores.length = K.length
  simp only [attentionWeights, Softmax.softmax, List.length_map, List.length_range, ← hK, le_refl]

/-- Main soundness theorem for scaled dot-product attention.

    If Q, K, V real matrices are bounded element-wise by interval matrices Q_I, K_I, V_I,
    then the output of attention is bounded by scaledDotProductAttention Q_I K_I V_I.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b3d28d81a896b8cc4143835ce6c2799802edf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
