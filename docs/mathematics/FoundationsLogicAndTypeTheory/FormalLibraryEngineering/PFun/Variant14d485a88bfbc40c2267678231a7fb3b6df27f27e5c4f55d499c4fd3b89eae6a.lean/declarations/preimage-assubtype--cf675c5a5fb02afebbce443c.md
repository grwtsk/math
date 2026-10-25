# preimage_asSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0454d970c95632d0c41e45b7ffeed8f29d7f6c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4f1bce9-ee66-a716-5e96-588ac1e767e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1806df58-b47c-b6a8-2075-6e63f612c567",
  "kind": "theorem",
  "lexical_name": "preimage_asSubtype",
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
  "slug": "preimage-assubtype--cf675c5a5fb02afebbce443c",
  "source": {
    "blob": "e0454d970c95632d0c41e45b7ffeed8f29d7f6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 438,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf675c5a5fb02afebbce443cf07042937952148e77dbc5dcbe8a140b09156f41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1806df58-b47c-b6a8-2075-6e63f612c567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_asSubtype (f : α →. β) (s : Set β) :
    f.asSubtype ⁻¹' s = Subtype.val ⁻¹' f.preimage s := by
  ext x
  simp only [Set.mem_preimage, Set.mem_setOf_eq, PFun.asSubtype, PFun.mem_preimage]
  show f.fn x.val _ ∈ s ↔ ∃ y ∈ s, y ∈ f x.val
  exact
    Iff.intro (fun h => ⟨_, h, Part.get_mem _⟩) fun ⟨y, ys, fxy⟩ =>
      have : f.fn x.val x.property ∈ f x.val := Part.get_mem _
      Part.mem_unique fxy this ▸ ys

/-- Turns a function into a partial function to a subtype. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0454d970c95632d0c41e45b7ffeed8f29d7f6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
