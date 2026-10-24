# Bornology.IsVonNBounded.restrict_scalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9545b7beb3a6dd139e49a0997fb93db1a00f19a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11065ace-a312-c512-7ba4-fb27b6e75811",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb5e4deb-4eb9-6417-58c1-ca6123ce88d9",
  "kind": "theorem",
  "lexical_name": "Bornology.IsVonNBounded.restrict_scalars",
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
  "slug": "bornology-isvonnbounded-restrict-scalars--357b77d6e3c453710f46cb2d",
  "source": {
    "blob": "9545b7beb3a6dd139e49a0997fb93db1a00f19a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 443,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:357b77d6e3c453710f46cb2df33a95b3173b21b3d708faea1a952e9c7fa6fbca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb5e4deb-4eb9-6417-58c1-ca6123ce88d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Bornology.IsVonNBounded.restrict_scalars
    [NormedField 𝕜] [NormedRing 𝕜'] [NormedAlgebra 𝕜 𝕜']
    [Zero E] [TopologicalSpace E]
    [SMul 𝕜 E] [MulActionWithZero 𝕜' E] [IsScalarTower 𝕜 𝕜' E] {s : Set E}
    (h : IsVonNBounded 𝕜' s) : IsVonNBounded 𝕜 s :=
  match subsingleton_or_nontrivial 𝕜' with
  | .inl _ =>
    have : Subsingleton E := MulActionWithZero.subsingleton 𝕜' E
    IsVonNBounded.of_subsingleton
  | .inr _ =>
    h.restrict_scalars_of_nontrivial _

section VonNBornologyEqMetric

namespace NormedSpace

section NormedField

variable (𝕜)
variable [NormedField 𝕜] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9545b7beb3a6dd139e49a0997fb93db1a00f19a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
