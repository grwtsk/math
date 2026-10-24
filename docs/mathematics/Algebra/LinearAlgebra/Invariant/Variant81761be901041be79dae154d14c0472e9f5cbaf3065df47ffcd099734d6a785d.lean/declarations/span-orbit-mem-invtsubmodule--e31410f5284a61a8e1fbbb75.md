# span_orbit_mem_invtSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:290ef293-6101-38d6-2950-2a4a4f388b71",
  "kind": "lemma",
  "lexical_name": "span_orbit_mem_invtSubmodule",
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
  "slug": "span-orbit-mem-invtsubmodule--e31410f5284a61a8e1fbbb75",
  "source": {
    "blob": "64ca0f0519a4d8358774c8944e447259f4456d1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e31410f5284a61a8e1fbbb75acd6f87fa5638f40068b3a30bc827c38ec8947e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290ef293-6101-38d6-2950-2a4a4f388b71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_orbit_mem_invtSubmodule {G : Type*}
    [Monoid G] [DistribMulAction G M] [SMulCommClass G R M] (x : M) (g : G) :
    span R (MulAction.orbit G x) ∈ invtSubmodule (DistribSMul.toLinearMap R M g) := by
  rw [mem_invtSubmodule, Submodule.span_le, Submodule.comap_coe]
  intro y hy
  simp only [Set.mem_preimage, DistribSMul.toLinearMap_apply, SetLike.mem_coe]
  exact Submodule.subset_span <| MulAction.mem_orbit_of_mem_orbit g hy

end Module.End
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ca0f0519a4d8358774c8944e447259f4456d1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
