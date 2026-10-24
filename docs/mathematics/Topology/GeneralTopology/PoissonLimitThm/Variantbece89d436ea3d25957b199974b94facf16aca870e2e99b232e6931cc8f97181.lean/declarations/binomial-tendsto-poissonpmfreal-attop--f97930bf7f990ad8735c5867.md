# binomial_tendsto_poissonPMFReal_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59c4cb1f2e972cc1b4cdc997586c844d1e04b2e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56ed30cb-ddf9-d2e7-598a-14173a34fd04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b0c9ce7-9494-3049-78a8-967ad3c14140",
  "kind": "lemma",
  "lexical_name": "binomial_tendsto_poissonPMFReal_atTop",
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
  "slug": "binomial-tendsto-poissonpmfreal-attop--f97930bf7f990ad8735c5867",
  "source": {
    "blob": "59c4cb1f2e972cc1b4cdc997586c844d1e04b2e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f97930bf7f990ad8735c5867b0e113607dd04a84a9607d69bea0af12b721936a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b0c9ce7-9494-3049-78a8-967ad3c14140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma binomial_tendsto_poissonPMFReal_atTop {r : ℝ≥0} {p : ℕ → unitInterval}
    (hr : Tendsto (fun n => n * (p n : ℝ)) atTop (𝓝 r)) :
    Tendsto (fun n ↦ Bin(n, p n) {k}) atTop (𝓝 (poissonMeasure r {k})) := by
  have t1 : Tendsto (fun n => (ENNReal.ofReal (n.choose k * (p n) ^ k * (1 - p n) ^ (n - k) : ℝ)))
      atTop (𝓝 (poissonMeasure r {k})) := by
    simp_rw [poissonMeasure_singleton]
    exact tendsto_ofReal (tendsto_choose_mul_pow_of_tendsto_mul_atTop k (by norm_cast))
  refine Tendsto.congr' ?_ t1
  simpa only [EventuallyEq, eventually_atTop, ge_iff_le] using
    ⟨k, fun b hb ↦ (binomial_singleton b k (p b)).symm⟩

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantbece89d436ea3d25957b199974b94facf16aca870e2e99b232e6931cc8f97181.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c4cb1f2e972cc1b4cdc997586c844d1e04b2e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
