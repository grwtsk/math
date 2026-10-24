# exists_restrict_eq_forall_mem_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5a3181d-ffcd-668c-eddd-6bb52c9bbcd4",
  "kind": "theorem",
  "lexical_name": "exists_restrict_eq_forall_mem_of_closed",
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
  "slug": "exists-restrict-eq-forall-mem-of-closed--093f4dc884cedfd7232d5d9b",
  "source": {
    "blob": "e2792b415247d59f4b3d847831a6c637aa972d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 408,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:093f4dc884cedfd7232d5d9bf06111fc3430fe02c2eb8a3020debb1fb2225cdf",
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

Occurrence: `result:a5a3181d-ffcd-668c-eddd-6bb52c9bbcd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_restrict_eq_forall_mem_of_closed {s : Set Y} (f : C(s, ℝ)) {t : Set ℝ}
    [OrdConnected t] (ht : ∀ x, f x ∈ t) (hne : t.Nonempty) (hs : IsClosed s) :
    ∃ g : C(Y, ℝ), (∀ y, g y ∈ t) ∧ g.restrict s = f :=
  let ⟨g, hgt, hgf⟩ :=
    exists_extension_forall_mem_of_closedEmbedding f ht hne (closedEmbedding_subtype_val hs)
  ⟨g, hgt, coe_injective hgf⟩
#align continuous_map.exists_restrict_eq_forall_mem_of_closed ContinuousMap.exists_restrict_eq_forall_mem_of_closed

/-- **Tietze extension theorem** for real-valued continuous maps, a version for a closed set. Let
`s` be a closed set in a normal topological space `Y`. Let `f` be a continuous real-valued function
on `s`. Then there exists a continuous real-valued function `g : C(Y, ℝ)` such that
`g.restrict s = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2792b415247d59f4b3d847831a6c637aa972d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
