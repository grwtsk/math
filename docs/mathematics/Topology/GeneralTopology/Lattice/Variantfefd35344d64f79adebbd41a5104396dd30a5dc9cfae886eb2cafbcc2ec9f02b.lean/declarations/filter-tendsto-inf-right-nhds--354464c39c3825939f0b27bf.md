# Filter.Tendsto.inf_right_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f1d7966-ace2-6f22-323a-7c2553edffc5",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.inf_right_nhds",
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
  "slug": "filter-tendsto-inf-right-nhds--354464c39c3825939f0b27bf",
  "source": {
    "blob": "15c2bf18fc7557567a94f3c619528279d4bff2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variantfefd35344d64f79adebbd41a5104396dd30a5dc9cfae886eb2cafbcc2ec9f02b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354464c39c3825939f0b27bf300129ee9777595cbf5ad27064d3bf1019660df5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variantfefd35344d64f79adebbd41a5104396dd30a5dc9cfae886eb2cafbcc2ec9f02b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f1d7966-ace2-6f22-323a-7c2553edffc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.inf_right_nhds {ι β} [TopologicalSpace β] [Inf β] [ContinuousInf β]
    {l : Filter ι} {f g : ι → β} {x y : β} (hf : Tendsto f l (𝓝 x)) (hg : Tendsto g l (𝓝 y)) :
    Tendsto (fun i => f i ⊓ g i) l (𝓝 (x ⊓ y)) :=
  hf.inf_right_nhds' hg
#align filter.tendsto.inf_right_nhds Filter.Tendsto.inf_right_nhds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variantfefd35344d64f79adebbd41a5104396dd30a5dc9cfae886eb2cafbcc2ec9f02b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variantfefd35344d64f79adebbd41a5104396dd30a5dc9cfae886eb2cafbcc2ec9f02b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15c2bf18fc7557567a94f3c619528279d4bff2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
