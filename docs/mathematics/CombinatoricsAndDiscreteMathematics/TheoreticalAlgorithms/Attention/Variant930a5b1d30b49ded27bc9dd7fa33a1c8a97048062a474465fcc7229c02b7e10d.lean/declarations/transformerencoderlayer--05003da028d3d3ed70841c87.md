# TransformerEncoderLayer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7f731d556274a345a0c922a207dc1853eedb6d844a1917b6c5309b074b4153f",
  "kind": "structure",
  "lexical_name": "TransformerEncoderLayer",
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
  "slug": "transformerencoderlayer--05003da028d3d3ed70841c87",
  "source": {
    "blob": "dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05003da028d3d3ed70841c8738a5c42059bc9a18090167b3b8826034cf6969a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7f731d556274a345a0c922a207dc1853eedb6d844a1917b6c5309b074b4153f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TransformerEncoderLayer where
  /-- Multi-head self-attention -/
  mha : MultiHeadAttentionParams
  /-- Feed-forward network -/
  ffn : Transformer.FFNBlock
  /-- Layer norm before attention -/
  ln1 : Transformer.LayerNormParams
  /-- Layer norm before FFN -/
  ln2 : Transformer.LayerNormParams
  deriving Repr

namespace TransformerEncoderLayer

/-- Forward pass through encoder layer (Pre-LN architecture).

    Output = LN2(x + FFN(LN1(x + MHA(x))))

    This is the "Pre-LN" variant which is more stable for training.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
