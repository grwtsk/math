# exists_primitive_element_of_finite_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eefb10b31c3bb4e8e1db409eb22440dcadecd038",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6beb49cc-53f7-27d9-6bba-1f6e6b4c5148",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee8ae1cd-a183-545a-0b7a-8d6817a1cbc5",
  "kind": "theorem",
  "lexical_name": "exists_primitive_element_of_finite_bot",
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
  "slug": "exists-primitive-element-of-finite-bot--4f7b4b3ab7be5efd44c4f7d3",
  "source": {
    "blob": "eefb10b31c3bb4e8e1db409eb22440dcadecd038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f7b4b3ab7be5efd44c4f7d3f8830882226b0bbdb1690d0b2b5841ad0827d01a",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee8ae1cd-a183-545a-0b7a-8d6817a1cbc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_primitive_element_of_finite_bot [Finite F] [FiniteDimensional F E] :
    ∃ α : E, F⟮α⟯ = ⊤ :=
  haveI : Finite E := finite_of_finite F E
  exists_primitive_element_of_finite_top F E
#align field.exists_primitive_element_of_finite_bot Field.exists_primitive_element_of_finite_bot

end PrimitiveElementFinite

/-! ### Primitive element theorem for infinite fields -/


section PrimitiveElementInf

variable {F : Type*} [Field F] [Infinite F] {E : Type*} [Field E] (ϕ : F →+* E) (α β : E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variant24626030e2e8b480b77e413092cac491c544e0182e07c3dc095359cebc3b329e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefb10b31c3bb4e8e1db409eb22440dcadecd038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
