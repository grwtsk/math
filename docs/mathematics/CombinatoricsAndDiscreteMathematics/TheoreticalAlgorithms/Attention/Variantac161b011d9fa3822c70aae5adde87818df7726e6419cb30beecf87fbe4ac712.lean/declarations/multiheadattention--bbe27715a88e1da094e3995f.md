# multiHeadAttention

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b89e705ebe9929db3803f6d704c90877998cc957eff437e047b5c7737d175a6a",
  "kind": "def",
  "lexical_name": "multiHeadAttention",
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
  "slug": "multiheadattention--bbe27715a88e1da094e3995f",
  "source": {
    "blob": "a3b3d28d81a896b8cc4143835ce6c2799802edf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe27715a88e1da094e3995f8df23555f8d00f0c55a8000a37f634cac1c56aae",
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

Occurrence: `declaration:b89e705ebe9929db3803f6d704c90877998cc957eff437e047b5c7737d175a6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multiHeadAttention (params : MultiHeadAttentionParams)
    (X : List IntervalVector) (prec : Int) : List IntervalVector :=
  -- Compute each head
  let heads : List (List IntervalVector) :=
    List.zipWith3 (fun wq wk wv => singleHead X wq wk wv params.d_k prec)
      params.W_Q params.W_K params.W_V

  -- For each position, concatenate all heads and project
  let seq_len := X.length
  List.range seq_len |>.map (fun pos =>
    -- Gather outputs from all heads at this position
    let head_outputs := heads.filterMap (fun head => head[pos]?)
    -- Concatenate
    let concat := concatVectors head_outputs
    -- Project through W_O
    let projected := params.W_O.map (fun w_row =>
      let products := List.zipWith (fun wi xi =>
        let w_interval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton wi) prec
        IntervalDyadic.mulRounded w_interval xi prec
      ) w_row concat
      products.foldl IntervalDyadic.add (IntervalDyadic.singleton (Core.Dyadic.ofInt 0))
    )
    projected
  )

/-! ### Real Specifications -/

/-- Real-valued scaled dot-product attention -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b3d28d81a896b8cc4143835ce6c2799802edf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
