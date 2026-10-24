# norm_mul_self_eq_normSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6df8b18c717b91e0a94b985925e838fdb5d8900",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37eee6af-5c97-2af1-d786-350e80e147a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:064576f3-e000-6711-5392-bbf339100833",
  "kind": "theorem",
  "lexical_name": "norm_mul_self_eq_normSq",
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
  "slug": "norm-mul-self-eq-normsq--62fde44cffaac181d7cb4c1b",
  "source": {
    "blob": "e6df8b18c717b91e0a94b985925e838fdb5d8900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 26,
    "path": "GRWTSK/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62fde44cffaac181d7cb4c1b1baab51bb743834c75e82e9363a96459aa4a2c36",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:064576f3-e000-6711-5392-bbf339100833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mul_self_eq_normSq (z : ℂ) : ‖z‖ * ‖z‖ = normSq z :=
  Real.mul_self_sqrt (normSq_nonneg _)

@[deprecated (since := "2025-02-16")] alias mul_self_abs := norm_mul_self_eq_normSq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6df8b18c717b91e0a94b985925e838fdb5d8900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
