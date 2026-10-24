# tendstoUniformlyOn_of_seq_tendstoUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea3123fd-7551-2373-86ef-559ea7e93e98",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_of_seq_tendstoUniformlyOn",
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
  "slug": "tendstouniformlyon-of-seq-tendstouniformlyon--6d00afd534143e675753f7b5",
  "source": {
    "blob": "3dd1a950ccbf086c7b365c0d709c403e012d04b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 589,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d00afd534143e675753f7b55b6d8ba52b117e2c262cbe4118161ae4173b356f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea3123fd-7551-2373-86ef-559ea7e93e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_of_seq_tendstoUniformlyOn {l : Filter ι} [l.IsCountablyGenerated]
    (h : ∀ u : ℕ → ι, Tendsto u atTop l → TendstoUniformlyOn (fun n => F (u n)) f atTop s) :
    TendstoUniformlyOn F f l s := by
  rw [tendstoUniformlyOn_iff_tendsto, tendsto_iff_seq_tendsto]
  intro u hu
  rw [tendsto_prod_iff'] at hu
  specialize h (fun n => (u n).fst) hu.1
  rw [tendstoUniformlyOn_iff_tendsto] at h
  exact h.comp (tendsto_id.prodMk hu.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd1a950ccbf086c7b365c0d709c403e012d04b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
