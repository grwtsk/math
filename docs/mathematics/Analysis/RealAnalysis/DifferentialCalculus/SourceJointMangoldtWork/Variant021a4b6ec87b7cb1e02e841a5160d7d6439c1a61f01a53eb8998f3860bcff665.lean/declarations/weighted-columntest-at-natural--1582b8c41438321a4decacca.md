# weighted_columnTest_at_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fd27d10f65961217a24ee3c571e54b169bc9401",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd8f65da-90a4-c24d-b316-1c7cb560350d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:340e1ad5-167a-4311-ca72-3bda05386644",
  "kind": "theorem",
  "lexical_name": "weighted_columnTest_at_natural",
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
  "slug": "weighted-columntest-at-natural--1582b8c41438321a4decacca",
  "source": {
    "blob": "5fd27d10f65961217a24ee3c571e54b169bc9401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1582b8c41438321a4decacca4a093e9b63b1b1152579816864e6488c654c39f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:340e1ad5-167a-4311-ca72-3bda05386644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_columnTest_at_natural (A : ℝ) (m k : ℕ)
    (hm : 0 < m) (hk : 0 < k) :
    vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  rw [show vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) =
    vonMangoldt m * (columnTest A k (Real.log (m : ℝ)) / (m : ℝ)) by ring,
    columnTest_at_natural A m k hm hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant021a4b6ec87b7cb1e02e841a5160d7d6439c1a61f01a53eb8998f3860bcff665.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd27d10f65961217a24ee3c571e54b169bc9401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
