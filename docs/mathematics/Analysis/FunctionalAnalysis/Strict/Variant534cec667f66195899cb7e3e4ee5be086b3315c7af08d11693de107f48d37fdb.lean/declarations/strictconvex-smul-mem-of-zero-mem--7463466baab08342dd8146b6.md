# StrictConvex.smul_mem_of_zero_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e846d42ea22ba15847fdc0f6fd55c9d7a986da9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0365793a-18d0-0c41-1fea-404dad68eab4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:041fa154-785f-5bf2-2ab7-c2d3470718ca",
  "kind": "theorem",
  "lexical_name": "StrictConvex.smul_mem_of_zero_mem",
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
  "slug": "strictconvex-smul-mem-of-zero-mem--7463466baab08342dd8146b6",
  "source": {
    "blob": "6e846d42ea22ba15847fdc0f6fd55c9d7a986da9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 312,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7463466baab08342dd8146b64d2b704010ce37dae1596f53c3e6cb7f53d394d1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:041fa154-785f-5bf2-2ab7-c2d3470718ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvex.smul_mem_of_zero_mem [AddRightStrictMono 𝕜]
    (hs : StrictConvex 𝕜 s) (zero_mem : (0 : E) ∈ s)
    (hx : x ∈ s) (hx₀ : x ≠ 0) {t : 𝕜} (ht₀ : 0 < t) (ht₁ : t < 1) : t • x ∈ interior s := by
  simpa using hs.add_smul_mem zero_mem (by simpa using hx) hx₀ ht₀ ht₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant534cec667f66195899cb7e3e4ee5be086b3315c7af08d11693de107f48d37fdb.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e846d42ea22ba15847fdc0f6fd55c9d7a986da9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
