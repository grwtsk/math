# natUnionInftyEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abc1225c678b5d8a9f20e70c25bebe9a23c9817265ede1689a46b031cc8c5f46",
  "kind": "def",
  "lexical_name": "natUnionInftyEmbedding",
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
  "slug": "natunioninftyembedding--31208547fdaf86847600427c",
  "source": {
    "blob": "ca8cde69b9f8a506e1c92f2e170f34ac9e9f8e32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31208547fdaf86847600427cbb5f1bc1cd9c59405c42bb58a6230606fbd2decf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abc1225c678b5d8a9f20e70c25bebe9a23c9817265ede1689a46b031cc8c5f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def natUnionInftyEmbedding : C(OnePoint ℕ, ℝ) where
  toFun
    | ∞ => 0
    | OnePoint.some n => 1 / (n+1 : ℝ)
  continuous_toFun := OnePoint.continuous_iff_from_nat _ |>.mpr
    tendsto_one_div_add_atTop_nhds_zero_nat

/--
The continuous map from `ℕ∪{∞}` to `ℝ` sending `n` to `1/(n+1)` and `∞` to `0` is a closed
embedding.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variantca6043e4131e74fcbfdd55bc1a0c288a53a73eae9c32e1af96bbb7ca9d0b8406.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8cde69b9f8a506e1c92f2e170f34ac9e9f8e32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
