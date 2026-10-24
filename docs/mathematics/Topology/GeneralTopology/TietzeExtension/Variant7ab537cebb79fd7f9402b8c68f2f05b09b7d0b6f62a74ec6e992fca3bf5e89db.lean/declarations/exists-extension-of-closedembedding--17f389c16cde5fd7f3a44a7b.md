# exists_extension_of_closedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2ff3c96-6753-9c94-3e22-81d9ed7153e3",
  "kind": "theorem",
  "lexical_name": "exists_extension_of_closedEmbedding",
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
  "slug": "exists-extension-of-closedembedding--17f389c16cde5fd7f3a44a7b",
  "source": {
    "blob": "e2792b415247d59f4b3d847831a6c637aa972d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 396,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17f389c16cde5fd7f3a44a7b1775810f8283b479b000755852d15ce71debbc2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2ff3c96-6753-9c94-3e22-81d9ed7153e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_of_closedEmbedding (f : C(X, ℝ)) (e : X → Y) (he : ClosedEmbedding e) :
    ∃ g : C(Y, ℝ), g ∘ e = f :=
  (exists_extension_forall_mem_of_closedEmbedding f (fun _ => mem_univ _) univ_nonempty he).imp
    fun _ => And.right
#align continuous_map.exists_extension_of_closed_embedding ContinuousMap.exists_extension_of_closedEmbedding

/-- **Tietze extension theorem** for real-valued continuous maps, a version for a closed set. Let
`s` be a closed set in a normal topological space `Y`. Let `f` be a continuous real-valued function
on `s`. Let `t` be a nonempty convex set of real numbers (we use `ord_connected` instead of `convex`
to automatically deduce this argument by typeclass search) such that `f x ∈ t` for all `x : s`. Then
there exists a continuous real-valued function `g : C(Y, ℝ)` such that `g y ∈ t` for all `y` and
`g.restrict s = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2792b415247d59f4b3d847831a6c637aa972d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
