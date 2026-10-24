# _root_.GRWTSK.Topology.GeneralTopology.StrictMonoExistsBetweenOfTendstoAtTop.Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.ContinuousLinearMap.rotation_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b03b113-7e50-78fa-60de-918714f56083",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.StrictMonoExistsBetweenOfTendstoAtTop.Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.ContinuousLinearMap.rotation_apply",
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
  "slug": "root-grwtsk-topology-generaltopology-strictmonoexistsbetweenoftendstoatt--1dc672298b7362b4764f69c7",
  "source": {
    "blob": "559e64cf17d595dbfc07c9242084a40ca67adfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dc672298b7362b4764f69c701ef37794433f6a8403e9337ba0f38dd9f91ebe9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b03b113-7e50-78fa-60de-918714f56083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.StrictMonoExistsBetweenOfTendstoAtTop.Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.ContinuousLinearMap.rotation_apply (θ : ℝ) (x : E × E) :
    ContinuousLinearMap.rotation θ x
     = (Real.cos θ • x.1 + Real.sin θ • x.2, -Real.sin θ • x.1 + Real.cos θ • x.2) := rfl

variable [SecondCountableTopology E] [MeasurableSpace E] [BorelSpace E] {μ : Measure E} {a : ℝ}

/-- If a measure `μ` is such that `μ.prod μ` is invariant by rotation of angle `-π/4` then
`μ {x | ‖x‖ ≤ a} * μ {x | b < ‖x‖} ≤ μ {x | (b - a) / √2 < ‖x‖} ^ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559e64cf17d595dbfc07c9242084a40ca67adfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
