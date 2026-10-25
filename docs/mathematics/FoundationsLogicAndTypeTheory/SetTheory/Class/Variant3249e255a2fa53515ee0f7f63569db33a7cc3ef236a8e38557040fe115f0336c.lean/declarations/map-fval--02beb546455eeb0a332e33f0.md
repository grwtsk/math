# map_fval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90bfc33c92ab0321dfcb6b8f631d4c5fae9d7e79",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:977e80aa-9154-ec8d-b73c-0e5a1a408c56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d8ee127-d303-4a47-7678-96ad093dc44a",
  "kind": "theorem",
  "lexical_name": "map_fval",
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
  "slug": "map-fval--02beb546455eeb0a332e33f0",
  "source": {
    "blob": "90bfc33c92ab0321dfcb6b8f631d4c5fae9d7e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 319,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02beb546455eeb0a332e33f0cc8867a65476e9b322d36e907ef8057da42f0a0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d8ee127-d303-4a47-7678-96ad093dc44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_fval {f : ZFSet.{u} → ZFSet.{u}} [Definable₁ f] {x y : ZFSet.{u}}
    (h : y ∈ x) : (ZFSet.map f x ′ y : Class.{u}) = f y :=
  Class.iota_val _ _ fun z => by
    rw [Class.toSet_of_ZFSet, Class.coe_apply, mem_map]
    exact
      ⟨fun ⟨w, _, pr⟩ => by
        let ⟨wy, fw⟩ := ZFSet.pair_injective pr
        rw [← fw, wy], fun e => by
        subst e
        exact ⟨_, h, rfl⟩⟩

variable (x : ZFSet.{u})

/-- A choice function on the class of nonempty ZFC sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90bfc33c92ab0321dfcb6b8f631d4c5fae9d7e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
