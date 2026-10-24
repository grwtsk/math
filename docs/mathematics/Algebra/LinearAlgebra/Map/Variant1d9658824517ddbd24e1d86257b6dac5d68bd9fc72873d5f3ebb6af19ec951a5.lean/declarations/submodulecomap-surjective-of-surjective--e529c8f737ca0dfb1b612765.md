# submoduleComap_surjective_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c7d87f99a9186960bbbf0a2f7e67b358644a0bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d76e315-e130-764c-74c5-8c22a5e18a19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b1fab5d-a196-145c-9642-04cb2246aa6d",
  "kind": "theorem",
  "lexical_name": "submoduleComap_surjective_of_surjective",
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
  "slug": "submodulecomap-surjective-of-surjective--e529c8f737ca0dfb1b612765",
  "source": {
    "blob": "0c7d87f99a9186960bbbf0a2f7e67b358644a0bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 648,
    "path": "GRWTSK/Algebra/LinearAlgebra/Map/Variant1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e529c8f737ca0dfb1b6127658c991056fb479b02fb16eb0974d5b9b540e2ed13",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Map/Variant1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b1fab5d-a196-145c-9642-04cb2246aa6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submoduleComap_surjective_of_surjective (f : M →ₛₗ[σ₁₂] M₂) (q : Submodule R₂ M₂)
    (hf : Surjective f) : Surjective (f.submoduleComap q) := fun y ↦ by
  obtain ⟨x, hx⟩ := hf y
  use ⟨x, Submodule.mem_comap.mpr (hx ▸ y.2)⟩
  apply Subtype.val_injective
  simp [hx]

/-- A linear map between two modules restricts to a linear map from any submodule p of the
domain onto the image of that submodule.

This is the linear version of `AddMonoidHom.addSubmonoidMap` and `AddMonoidHom.addSubgroupMap`.

TODO: Consider making this an `abbrev`, dropping its API, and renaming to something like
`restrictSubmodule`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Map/Variant1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Map/Variant1d9658824517ddbd24e1d86257b6dac5d68bd9fc72873d5f3ebb6af19ec951a5.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7d87f99a9186960bbbf0a2f7e67b358644a0bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
