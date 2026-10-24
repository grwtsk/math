# forward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19afbcc71d510ef8375311d7eff32af880c42c59d6322e8cb76e92916397a934",
  "kind": "def",
  "lexical_name": "forward",
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
  "slug": "forward--844c8f7979e7b8ba31bad8d1",
  "source": {
    "blob": "a3b3d28d81a896b8cc4143835ce6c2799802edf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:844c8f7979e7b8ba31bad8d177c3fcdc949561fb71a129b7c1cc099493ab0de7",
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

Occurrence: `declaration:19afbcc71d510ef8375311d7eff32af880c42c59d6322e8cb76e92916397a934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forward (layer : TransformerEncoderLayer) (x : List IntervalVector)
    (prec : Int) : List IntervalVector :=
  -- 1. Self-Attention with residual
  let attn_out := multiHeadAttention layer.mha x prec
  let x_attn := List.zipWith (List.zipWith IntervalDyadic.add) x attn_out

  -- 2. Layer Norm 1
  let x_ln1 := x_attn.map (fun v => layer.ln1.forwardInterval v prec)

  -- 3. FFN with residual
  let ffn_out := x_ln1.map (fun v => layer.ffn.forwardInterval v prec)
  let x_ffn := List.zipWith (List.zipWith IntervalDyadic.add) x_ln1 ffn_out

  -- 4. Layer Norm 2
  x_ffn.map (fun v => layer.ln2.forwardInterval v prec)

end TransformerEncoderLayer

/-- A stack of Transformer encoder layers -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b3d28d81a896b8cc4143835ce6c2799802edf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
