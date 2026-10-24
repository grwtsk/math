# bilateralObserve_toBilateral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01c257ea-5a43-eb17-69f1-7e59d8e960d8",
  "kind": "theorem",
  "lexical_name": "bilateralObserve_toBilateral",
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
  "slug": "bilateralobserve-tobilateral--9b8367e6107b085925b6f093",
  "source": {
    "blob": "d867e425136f496222bc90e44c382b4fadcac0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 172,
    "path": "GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b8367e6107b085925b6f09387ddfe113066f61d1c692ebdaf6d4d2ad0ba3821",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01c257ea-5a43-eb17-69f1-7e59d8e960d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bilateralObserve_toBilateral
    (G : ReversibleSystem State Resolution)
    (ρ : Resolution)
    (x : State) :
    G.bilateralObserve ρ (G.toBilateral x) = G.observe ρ x :=
  rfl

/--
A positive identity power turns every inverse iterate into a forward iterate,
so forward and bilateral observational kernels coincide.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d867e425136f496222bc90e44c382b4fadcac0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
