# TendstoUniformlyOnFilter.congr_inseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fdab81e-5e84-08af-4be8-62c59c42f945",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOnFilter.congr_inseparable",
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
  "slug": "tendstouniformlyonfilter-congr-inseparable--f50bc88bb32fa09e7a2ad660",
  "source": {
    "blob": "3dd1a950ccbf086c7b365c0d709c403e012d04b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50bc88bb32fa09e7a2ad660a6799105e468225f3926f68d6c7ae44431866b82",
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

Occurrence: `result:6fdab81e-5e84-08af-4be8-62c59c42f945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoUniformlyOnFilter.congr_inseparable {F' : ι → α → β}
    (hf : TendstoUniformlyOnFilter F f p p')
    (hff' : ∀ᶠ n : ι × α in p ×ˢ p', Inseparable (F n.fst n.snd) (F' n.fst n.snd)) :
    TendstoUniformlyOnFilter F' f p p' := by
  rw [tendstoUniformlyOnFilter_iff_tendsto, uniformity_hasBasis_open.tendsto_right_iff] at hf ⊢
  exact fun i hi => (hf i hi).congr (hff'.mono fun x hx =>
    (Inseparable.rfl.prod hx).mem_open_iff hi.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant34ffaf3e476fe763dfc064146e3ebf576965d7284aff8971ce15cf0984c8bd1c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd1a950ccbf086c7b365c0d709c403e012d04b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
