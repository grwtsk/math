# depClosure_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f45e4b5-c3a7-9d03-6912-9f8e624bcebe",
  "kind": "theorem",
  "lexical_name": "depClosure_minimal",
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
  "slug": "depclosure-minimal--271e8c3ee2283fda173c0dec",
  "source": {
    "blob": "9eb2cf21c5fc62682143db925e721f578776dde0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271e8c3ee2283fda173c0dec4f604932ee8b373dbaf57aa5e2f24e697835c745",
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

Occurrence: `result:1f45e4b5-c3a7-9d03-6912-9f8e624bcebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem depClosure_minimal (G : DependencyGraph)
    {roots S : Finset G.ProjectId}
    (hroot : roots ⊆ S)
    (hdep : ∀ {p}, p ∈ S → G.dependsOn p ⊆ S) :
    G.depClosure roots ⊆ S := by
  intro q hq
  obtain ⟨r, hr, hqr⟩ := G.mem_depClosure_iff.mp hq
  have hrS : r ∈ S := hroot hr
  have aux : ∀ {a b : G.ProjectId}, G.DepReachable a b → b ∈ S → a ∈ S := by
    intro a b hab hb
    induction hab using Relation.ReflTransGen.head_induction_on with
    | refl => exact hb
    | @head a c hac _ ih =>
        exact hdep ih hac
  exact aux hqr hrS

/-- Enlarging the root set can only enlarge its dependency closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb2cf21c5fc62682143db925e721f578776dde0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
