# partialSections.closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f377028d-aa90-2278-17dd-0eeeee730c35",
  "kind": "theorem",
  "lexical_name": "partialSections.closed",
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
  "slug": "partialsections-closed--f854d5109bbc735dedc07b81",
  "source": {
    "blob": "8c40e5e259acb028ad65887557e9363cec528205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f854d5109bbc735dedc07b81c874805c6ecde5fe3ae6f55dae3667c94c7fee08",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f377028d-aa90-2278-17dd-0eeeee730c35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialSections.closed [∀ j : J, T2Space (F.obj j)] {G : Finset J}
    (H : Finset (FiniteDiagramArrow G)) : IsClosed (partialSections F H) := by
  have :
    partialSections F H =
      ⋂ (f : FiniteDiagramArrow G) (_ : f ∈ H), {u | F.map f.2.2.2.2 (u f.1) = u f.2.1} := by
    ext1
    simp only [Set.mem_iInter, Set.mem_ofPred_eq]
    rfl
  rw [this]
  apply isClosed_biInter
  intro f _
  apply isClosed_eq <;> fun_prop

/-- Cofiltered limits of nonempty compact Hausdorff spaces are nonempty topological spaces.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c40e5e259acb028ad65887557e9363cec528205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
