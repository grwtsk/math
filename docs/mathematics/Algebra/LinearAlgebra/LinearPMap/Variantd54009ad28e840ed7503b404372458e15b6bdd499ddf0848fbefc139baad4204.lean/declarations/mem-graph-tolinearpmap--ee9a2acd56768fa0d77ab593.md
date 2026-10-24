# mem_graph_toLinearPMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c912417a-b173-526c-b102-5adbd37768fe",
  "kind": "theorem",
  "lexical_name": "mem_graph_toLinearPMap",
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
  "slug": "mem-graph-tolinearpmap--ee9a2acd56768fa0d77ab593",
  "source": {
    "blob": "921f976728691f37149f3c20eaccdd145dab4a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1029,
    "line": 1022,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9a2acd56768fa0d77ab593f2a544d37f030ad0bc85187d9309178aa30d98c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c912417a-b173-526c-b102-5adbd37768fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1022–1029.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_graph_toLinearPMap {g : Submodule R (E × F)}
    (hg : ∀ (x : E × F) (_hx : x ∈ g) (_hx' : x.fst = 0), x.snd = 0)
    (x : g.map (LinearMap.fst R E F)) : (x.val, g.toLinearPMap x) ∈ g := by
  rw [toLinearPMap_apply_aux hg]
  exact valFromGraph_mem hg x.2

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantd54009ad28e840ed7503b404372458e15b6bdd499ddf0848fbefc139baad4204.lean#L1022).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `921f976728691f37149f3c20eaccdd145dab4a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
