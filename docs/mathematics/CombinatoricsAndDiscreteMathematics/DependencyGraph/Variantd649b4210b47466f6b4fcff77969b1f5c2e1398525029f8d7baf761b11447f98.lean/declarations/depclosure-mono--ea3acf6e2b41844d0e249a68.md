# depClosure_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a15f9801-1d4d-8000-7a75-df88a8351dd2",
  "kind": "theorem",
  "lexical_name": "depClosure_mono",
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
  "slug": "depclosure-mono--ea3acf6e2b41844d0e249a68",
  "source": {
    "blob": "9eb2cf21c5fc62682143db925e721f578776dde0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea3acf6e2b41844d0e249a68047a2c4c77301f5f02b2c054a065587bbd653a69",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15f9801-1d4d-8000-7a75-df88a8351dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem depClosure_mono (G : DependencyGraph)
    {roots roots' : Finset G.ProjectId}
    (h : roots ⊆ roots') :
    G.depClosure roots ⊆ G.depClosure roots' := by
  intro q hq
  obtain ⟨r, hr, hqr⟩ := G.mem_depClosure_iff.mp hq
  exact G.mem_depClosure_iff.mpr ⟨r, h hr, hqr⟩

/-- Taking dependency closure twice adds no projects. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb2cf21c5fc62682143db925e721f578776dde0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
