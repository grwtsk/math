# isLocalHomeomorphOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b184c48002f581fbbabe99b17aea5e8f250082d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f2558fd-2d67-ec70-659d-58967e4da001",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2084237-c81f-f6f3-e98d-5925bf314c38",
  "kind": "theorem",
  "lexical_name": "isLocalHomeomorphOn",
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
  "slug": "islocalhomeomorphon--fb2fae6dfe968368c5244782",
  "source": {
    "blob": "0b184c48002f581fbbabe99b17aea5e8f250082d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb2fae6dfe968368c5244782301dc3cf724d8244343faced6ded354429b2cade",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2084237-c81f-f6f3-e98d-5925bf314c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isLocalHomeomorphOn (hf : IsCoveringMapOn f s) :
    IsLocalHomeomorphOn f (f ⁻¹' s) := by
  refine IsLocalHomeomorphOn.mk f (f ⁻¹' s) fun x hx => ?_
  let e := (hf (f x) hx).toTrivialization
  have h := (hf (f x) hx).mem_toTrivialization_baseSet
  let he := e.mem_source.2 h
  refine
    ⟨e.toPartialHomeomorph.trans
        { toFun := fun p => p.1
          invFun := fun p => ⟨p, x, rfl⟩
          source := e.baseSet ×ˢ ({⟨x, rfl⟩} : Set (f ⁻¹' {f x}))
          target := e.baseSet
          open_source :=
            e.open_baseSet.prod (singletons_open_iff_discrete.2 (hf (f x) hx).1 ⟨x, rfl⟩)
          open_target := e.open_baseSet
          map_source' := fun p => And.left
          map_target' := fun p hp => ⟨hp, rfl⟩
          left_inv' := fun p hp => Prod.ext rfl hp.2.symm
          right_inv' := fun p _ => rfl
          continuousOn_toFun := continuousOn_fst
          continuousOn_invFun := by fun_prop },
      ⟨he, by rwa [e.toPartialHomeomorph.symm_symm, e.proj_toFun x he],
        (hf (f x) hx).toTrivialization_apply⟩,
      fun p h => (e.proj_toFun p h.1).symm⟩

end IsCoveringMapOn

/-- A covering map is a continuous function `f : E → X` with discrete fibers such that each point
  of `X` has an evenly covered neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b184c48002f581fbbabe99b17aea5e8f250082d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
