# interior_union_of_disjoint_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00dabd68-2b40-4f82-8220-adf61b3dbe3a",
  "kind": "theorem",
  "lexical_name": "interior_union_of_disjoint_closure",
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
  "slug": "interior-union-of-disjoint-closure--6e8ecc16fba336d62b4d08a3",
  "source": {
    "blob": "57e1d26b7e1be608090849561d7ca1ca683f2e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8ecc16fba336d62b4d08a3d701ae840e93e7e6faddf0f695ddf87ab0598eef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00dabd68-2b40-4f82-8220-adf61b3dbe3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_union_of_disjoint_closure (h : Disjoint (closure s) (closure t)) :
    interior (s ∪ t) = interior s ∪ interior t := by
  have full : interior sᶜ ∪ interior tᶜ = univ := by simpa [disjoint_iff, ← compl_inter] using h
  refine subset_antisymm ?_ subset_interior_union
  rw [← (interior _).inter_univ, ← full, inter_union_distrib_left]
  exact union_subset
    (interior_union_inter_interior_compl_left_subset.trans subset_union_right)
    (interior_union_inter_interior_compl_right_subset.trans subset_union_left)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant26099c8be1644b0bf6a7081e091bef6b677159a423aaf1e7e791175937c98798.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e1d26b7e1be608090849561d7ca1ca683f2e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
