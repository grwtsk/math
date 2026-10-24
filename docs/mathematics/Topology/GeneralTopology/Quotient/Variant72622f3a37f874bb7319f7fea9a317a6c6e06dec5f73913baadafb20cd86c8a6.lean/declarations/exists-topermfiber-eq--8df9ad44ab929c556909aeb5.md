# exists_toPermFiber_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c82fdbbdefcc9d0ccaa3c8de9fe4e783a1916150",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbb173d6-5a26-0952-e92b-8f02e23e944d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9266fb2f-a846-15e8-eb87-54647afb3d67",
  "kind": "theorem",
  "lexical_name": "exists_toPermFiber_eq",
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
  "slug": "exists-topermfiber-eq--8df9ad44ab929c556909aeb5",
  "source": {
    "blob": "c82fdbbdefcc9d0ccaa3c8de9fe4e783a1916150",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8df9ad44ab929c556909aeb5a1545cb50d25e4714301f5b44fb57b2693818fde",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9266fb2f-a846-15e8-eb87-54647afb3d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_toPermFiber_eq {x : X} (e e' : f ⁻¹' {x}) : ∃ g, hf.toPermFiber x g e = e' := by
  let := hf.mulActionFiber x
  have := hf.mulActionFiber_isPretransitive x
  obtain ⟨g, rfl⟩ := MulAction.IsPretransitive.exists_smul_eq e e' (M := G)
  use g
  ext
  simp

end IsQuotientCoveringMap

namespace Topology.IsQuotientMap

variable {f G} (hf : IsQuotientMap f)
include hf

section MulAction

open Bundle

variable [ContinuousConstSMul G E]
variable (hfG : ∀ {e₁ e₂}, f e₁ = f e₂ ↔ e₁ ∈ MulAction.orbit G e₂)
include hfG

/-- If a group `G` acts on a space `E` and `U` is an open subset disjoint from all other
`G`-translates of itself, and `p` is a quotient map by this action, then `p` admits a
`Bundle.Trivialization` over the base set `p(U)`. -/
@[to_additive (attr := simps! source target baseSet)
/-- If a group `G` acts on a space `E` and `U` is an open subset disjoint from all
other `G`-translates of itself, and `p` is a quotient map by this action, then `p` admits a
`Bundle.Trivialization` over the base set `p(U)`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant72622f3a37f874bb7319f7fea9a317a6c6e06dec5f73913baadafb20cd86c8a6.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82fdbbdefcc9d0ccaa3c8de9fe4e783a1916150` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
