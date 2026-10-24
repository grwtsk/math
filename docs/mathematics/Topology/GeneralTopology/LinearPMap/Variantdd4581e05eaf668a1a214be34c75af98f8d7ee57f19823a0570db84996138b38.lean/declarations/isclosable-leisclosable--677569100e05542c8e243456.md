# IsClosable.leIsClosable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4b36209-535f-54c8-9fc9-b4f4619e62c0",
  "kind": "theorem",
  "lexical_name": "IsClosable.leIsClosable",
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
  "slug": "isclosable-leisclosable--677569100e05542c8e243456",
  "source": {
    "blob": "93b69d7fc2404afddcc1406380077f06bb81a0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:677569100e05542c8e243456ea393a781badc4269326a6b325e148af796c72b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4b36209-535f-54c8-9fc9-b4f4619e62c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosable.leIsClosable {f g : E →ₗ.[R] F} (hf : f.IsClosable) (hfg : g ≤ f) :
    g.IsClosable := by
  obtain ⟨f', hf⟩ := hf
  have : g.graph.topologicalClosure ≤ f'.graph := by
    rw [← hf]
    exact Submodule.topologicalClosure_mono (le_graph_of_le hfg)
  use g.graph.topologicalClosure.toLinearPMap
  rw [Submodule.toLinearPMap_graph_eq]
  exact fun _ hx hx' => f'.graph_fst_eq_zero_snd (this hx) hx'

/-- The closure is unique. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b69d7fc2404afddcc1406380077f06bb81a0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
