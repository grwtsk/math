# coe_weightSpace_of_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6122bede893542c7e45486e2105864243847b480",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2542c900-e602-bb3f-5bee-352f9d5de14b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:573d83d7-e931-9946-35a7-95d8b3c8968f",
  "kind": "theorem",
  "lexical_name": "coe_weightSpace_of_top",
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
  "slug": "coe-weightspace-of-top--7a279062a0b11c3adf92cdbe",
  "source": {
    "blob": "6122bede893542c7e45486e2105864243847b480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a279062a0b11c3adf92cdbe6268ffd76310c49e7bd30fde392c3c2ea72bf6c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:573d83d7-e931-9946-35a7-95d8b3c8968f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_weightSpace_of_top [LieAlgebra.IsNilpotent R L] (χ : L → R) :
    (weightSpace M (χ ∘ (⊤ : LieSubalgebra R L).incl) : Submodule R M) = weightSpace M χ := by
  ext m
  simp only [weightSpace, LieSubmodule.coe_toSubmodule_mk, LieSubalgebra.coe_bracket_of_module,
    Function.comp_apply, mem_preWeightSpace]
  constructor <;> intro h x
  · obtain ⟨k, hk⟩ := h ⟨x, Set.mem_univ x⟩; use k; exact hk
  · obtain ⟨k, hk⟩ := h x; use k; exact hk
#align lie_module.coe_weight_space_of_top LieModule.coe_weightSpace_of_top

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6122bede893542c7e45486e2105864243847b480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
