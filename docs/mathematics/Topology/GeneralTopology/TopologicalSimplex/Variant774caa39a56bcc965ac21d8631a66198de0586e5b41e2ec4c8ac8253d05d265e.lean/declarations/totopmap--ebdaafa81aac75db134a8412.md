# toTopMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56ecd4dae7b7defc6aa9cc6d8af4da3574eab765eabc78eee56cf7cdf552a7f7",
  "kind": "def",
  "lexical_name": "toTopMap",
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
  "slug": "totopmap--ebdaafa81aac75db134a8412",
  "source": {
    "blob": "f9504d2119c2c486dd6edfc57b7ea3065a4fe5af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebdaafa81aac75db134a84125c9e3cb9c7df202d64d45cb6198377dd6a27bd07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56ecd4dae7b7defc6aa9cc6d8af4da3574eab765eabc78eee56cf7cdf552a7f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTopMap {x y : SimplexCategory} (f : x ⟶ y) (g : x.toTopObj) : y.toTopObj :=
  ⟨fun i => ∑ j ∈ Finset.univ.filter (f · = i), g j, by
    simp only [toTopObj, Set.mem_setOf]
    rw [← Finset.sum_biUnion]
    · have hg : ∑ i : ToType x, g i = 1 := g.2
      convert hg
      simp [Finset.eq_univ_iff_forall]
    · convert Set.pairwiseDisjoint_filter _ _ _⟩

open Classical in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9504d2119c2c486dd6edfc57b7ea3065a4fe5af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
