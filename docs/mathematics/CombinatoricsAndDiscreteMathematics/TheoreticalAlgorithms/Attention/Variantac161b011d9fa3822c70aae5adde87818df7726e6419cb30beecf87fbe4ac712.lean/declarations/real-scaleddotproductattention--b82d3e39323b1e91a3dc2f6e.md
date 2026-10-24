# Real.scaledDotProductAttention

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3eec7af4660d3b7f27418887219debace77a0151b28d1768d96c7bbc54e2f45",
  "kind": "def",
  "lexical_name": "Real.scaledDotProductAttention",
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
  "slug": "real-scaleddotproductattention--b82d3e39323b1e91a3dc2f6e",
  "source": {
    "blob": "a3b3d28d81a896b8cc4143835ce6c2799802edf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b82d3e39323b1e91a3dc2f6eaf7654c716e3604289c652037f86a683e17a404a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3eec7af4660d3b7f27418887219debace77a0151b28d1768d96c7bbc54e2f45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Real.scaledDotProductAttention (Q K V : List (List ℝ)) (d_k : Nat) :
    List (List ℝ) :=
  let scale := 1 / Real.sqrt d_k
  Q.map (fun q =>
    -- Compute attention scores
    let scores := K.map (fun k =>
      (List.zipWith (· * ·) q k).sum * scale)
    -- Apply softmax
    let weights := List.range scores.length |>.map (fun i =>
      Real.softmax scores i)
    -- Weighted sum of values
    let d_v := if V.isEmpty then 0 else V.head!.length
    List.range d_v |>.map (fun j =>
      (List.zipWith (fun w v => w * v[j]!) weights V).sum)
  )

/-! ### Soundness -/

/-- Soundness of attention weights computation.

    If query q is bounded by interval q_I, and keys K are bounded by K_I,
    then the attention weights (after softmax) are bounded by the computed intervals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b3d28d81a896b8cc4143835ce6c2799802edf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
