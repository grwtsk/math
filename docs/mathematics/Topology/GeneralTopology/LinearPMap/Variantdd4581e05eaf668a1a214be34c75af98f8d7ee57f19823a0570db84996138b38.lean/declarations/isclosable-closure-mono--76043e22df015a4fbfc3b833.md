# IsClosable.closure_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d53242ad-e441-5e4b-5f26-f78d44d38a3c",
  "kind": "theorem",
  "lexical_name": "IsClosable.closure_mono",
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
  "slug": "isclosable-closure-mono--76043e22df015a4fbfc3b833",
  "source": {
    "blob": "93b69d7fc2404afddcc1406380077f06bb81a0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76043e22df015a4fbfc3b83306673cda5f608235794c1d1bbf5b616e71acf71c",
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

Occurrence: `result:d53242ad-e441-5e4b-5f26-f78d44d38a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosable.closure_mono {f g : E →ₗ.[R] F} (hg : g.IsClosable) (h : f ≤ g) :
    f.closure ≤ g.closure := by
  refine le_of_le_graph ?_
  rw [← (hg.leIsClosable h).graph_closure_eq_closure_graph]
  rw [← hg.graph_closure_eq_closure_graph]
  exact Submodule.topologicalClosure_mono (le_graph_of_le h)

/-- If `f` is closable, then the closure is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b69d7fc2404afddcc1406380077f06bb81a0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
