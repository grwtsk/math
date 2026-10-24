# exists_extension_forall_mem_of_closedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef3a345d-5c2b-c08b-841d-b4f31485d10e",
  "kind": "theorem",
  "lexical_name": "exists_extension_forall_mem_of_closedEmbedding",
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
  "slug": "exists-extension-forall-mem-of-closedembedding--4d3df22808f8a3d47ed1146b",
  "source": {
    "blob": "e2792b415247d59f4b3d847831a6c637aa972d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 320,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d3df22808f8a3d47ed1146ba307c700439fe029ff6aeb66a644c09216e60ac7",
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

Occurrence: `result:ef3a345d-5c2b-c08b-841d-b4f31485d10e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_forall_mem_of_closedEmbedding (f : X →ᵇ ℝ) {t : Set ℝ} {e : X → Y}
    [hs : OrdConnected t] (hf : ∀ x, f x ∈ t) (hne : t.Nonempty) (he : ClosedEmbedding e) :
    ∃ g : Y →ᵇ ℝ, (∀ y, g y ∈ t) ∧ g ∘ e = f := by
  cases isEmpty_or_nonempty X
  · rcases hne with ⟨c, hc⟩
    refine' ⟨const Y c, fun _ => hc, funext fun x => isEmptyElim x⟩
  rcases exists_extension_forall_exists_le_ge_of_closedEmbedding f he with ⟨g, hg, hgf⟩
  refine' ⟨g, fun y => _, hgf⟩
  rcases hg y with ⟨xl, xu, h⟩
  exact hs.out (hf _) (hf _) h
#align bounded_continuous_function.exists_extension_forall_mem_of_closed_embedding BoundedContinuousFunction.exists_extension_forall_mem_of_closedEmbedding

/-- **Tietze extension theorem** for real-valued bounded continuous maps, a version for a closed
set. Let `s` be a closed set in a normal topological space `Y`. Let `f` be a bounded continuous
real-valued function on `s`. Let `t` be a nonempty convex set of real numbers (we use
`OrdConnected` instead of `Convex` to automatically deduce this argument by typeclass search) such
that `f x ∈ t` for all `x : s`. Then there exists a bounded continuous real-valued function
`g : Y →ᵇ ℝ` such that `g y ∈ t` for all `y` and `g.restrict s = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2792b415247d59f4b3d847831a6c637aa972d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
