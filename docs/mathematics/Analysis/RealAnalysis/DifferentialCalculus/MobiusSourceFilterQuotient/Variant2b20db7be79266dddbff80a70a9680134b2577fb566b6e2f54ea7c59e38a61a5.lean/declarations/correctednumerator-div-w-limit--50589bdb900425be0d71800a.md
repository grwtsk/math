# correctedNumerator_div_W_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9f9be77568436509cbb0e98733c190310cae57c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5ac32db-943b-0cdb-219e-4103611c152b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5d7500a-56e1-9a84-b243-19b03a3681c5",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_div_W_limit",
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
  "slug": "correctednumerator-div-w-limit--50589bdb900425be0d71800a",
  "source": {
    "blob": "a9f9be77568436509cbb0e98733c190310cae57c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotient/Variant2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50589bdb900425be0d71800a867c08bedf4675c2b7bc953cc78b34c51f8e55e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotient/Variant2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5d7500a-56e1-9a84-b243-19b03a3681c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_div_W_limit (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / W z) (𝓝[≠] (1 / 2))
      (𝓝 ((logNormalization X : ℂ) / deriv W (1 / 2))) := by
  have h := (correctedQuotient_tendsto_half X hX).div W_removed_half_limit
    W_deriv_half_ne_zero
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact div_div_div_cancel_right₀ (sub_ne_zero.mpr hz) _ _

end
end MobiusSourceFilterQuotientScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotient/Variant2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotient/Variant2b20db7be79266dddbff80a70a9680134b2577fb566b6e2f54ea7c59e38a61a5.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f9be77568436509cbb0e98733c190310cae57c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
