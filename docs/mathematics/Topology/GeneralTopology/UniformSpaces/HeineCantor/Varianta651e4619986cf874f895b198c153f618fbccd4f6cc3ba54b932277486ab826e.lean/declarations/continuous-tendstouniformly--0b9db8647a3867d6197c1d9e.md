# Continuous.tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:267290b4-338f-f7cf-81d9-9430e6a2f824",
  "kind": "theorem",
  "lexical_name": "Continuous.tendstoUniformly",
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
  "slug": "continuous-tendstouniformly--0b9db8647a3867d6197c1d9e",
  "source": {
    "blob": "e1f3a2b8be3550e3e0a7a428c4615e184f342e72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b9db8647a3867d6197c1d9e00c5fe220919dbf52f52b8564326a5a5433c99cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:267290b4-338f-f7cf-81d9-9430e6a2f824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.tendstoUniformly [WeaklyLocallyCompactSpace α] [CompactSpace β] [UniformSpace γ]
    (f : α → β → γ) (h : Continuous ↿f) (x : α) : TendstoUniformly f (f x) (𝓝 x) :=
  let ⟨K, hK, hxK⟩ := exists_compact_mem_nhds x
  have : UniformContinuousOn (↿f) (K ×ˢ univ) :=
    IsCompact.uniformContinuousOn_of_continuous (hK.prod isCompact_univ) h.continuousOn
  this.tendstoUniformly hxK

/-- In a product space `α × β`, assume that a function `f` is continuous on `s × k` where `k` is
compact. Then, along the fiber above any `q ∈ s`, `f` is transversely uniformly continuous, i.e.,
if `p ∈ s` is close enough to `q`, then `f p x` is uniformly close to `f q x` for all `x ∈ k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f3a2b8be3550e3e0a7a428c4615e184f342e72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
