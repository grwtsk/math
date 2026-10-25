# ProdLex_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a022c946c750158f5db6e2c67a643872a1e1ee9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 856,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6bd621379a47d9cd7c00647be260a7d71677dd7c675f7f921e0f030f7f87d11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f189d83-4fb7-6434-95b3-b91ffd7fe3fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8defff4-74f8-8a1b-5490-a10cf04e3e69",
  "kind": "theorem",
  "lexical_name": "ProdLex_iff",
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
  "slug": "prodlex-iff--a02c02a5e726c27af465456a",
  "source": {
    "blob": "2a022c946c750158f5db6e2c67a643872a1e1ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 868,
    "line": 856,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variante6bd621379a47d9cd7c00647be260a7d71677dd7c675f7f921e0f030f7f87d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a02c02a5e726c27af465456ad80c7ebf477590a79f838224583f70882fac4517",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variante6bd621379a47d9cd7c00647be260a7d71677dd7c675f7f921e0f030f7f87d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8defff4-74f8-8a1b-5490-a10cf04e3e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 856–868.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProdLex_iff [PartialOrder α] [Preorder β] {s : Set (α ×ₗ β)} :
    s.IsPWO ↔
      ((fun (x : α ×ₗ β) ↦ (ofLex x).1) '' s).IsPWO ∧ ∀ a, {y | toLex (a, y) ∈ s}.IsPWO :=
  ⟨fun h ↦ ⟨imageProdLex h, fiberProdLex h⟩, fun h ↦ subsetProdLex h.1 h.2⟩

end Set.PartiallyWellOrderedOn

/-- A version of **Dickson's lemma** any subset of functions `Π s : σ, α s` is partially well
ordered, when `σ` is a `Fintype` and each `α s` is a linear well order.
This includes the classical case of Dickson's lemma that `ℕ ^ n` is a well partial order.
Some generalizations would be possible based on this proof, to include cases where the target is
partially well ordered, and also to consider the case of `Set.PartiallyWellOrderedOn` instead of
`Set.IsPWO`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variante6bd621379a47d9cd7c00647be260a7d71677dd7c675f7f921e0f030f7f87d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variante6bd621379a47d9cd7c00647be260a7d71677dd7c675f7f921e0f030f7f87d11.lean#L856).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a022c946c750158f5db6e2c67a643872a1e1ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
