# exists_maximal_orthonormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07b398494eadbbe032fd777026bc3b3ca030bf19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6606ca3-b2af-b080-41ae-3e342d70c880",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:058574f3-43b1-33c6-223e-07387510480e",
  "kind": "theorem",
  "lexical_name": "exists_maximal_orthonormal",
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
  "slug": "exists-maximal-orthonormal--e4e8bd3edbca95f898841ea2",
  "source": {
    "blob": "07b398494eadbbe032fd777026bc3b3ca030bf19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 251,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e8bd3edbca95f898841ea27ea80a02618ccfb4f0dc0f88d1a186848e372ea6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:058574f3-43b1-33c6-223e-07387510480e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_maximal_orthonormal {s : Set E} (hs : Orthonormal 𝕜 (Subtype.val : s → E)) :
    ∃ w ⊇ s, Orthonormal 𝕜 (Subtype.val : w → E) ∧
      ∀ u ⊇ w, Orthonormal 𝕜 (Subtype.val : u → E) → u = w := by
  have := zorn_subset_nonempty { b | Orthonormal 𝕜 (Subtype.val : b → E) } ?_ _ hs
  · obtain ⟨b, hb⟩ := this
    exact ⟨b, hb.1, hb.2.1, fun u hus hu => hb.2.eq_of_ge hu hus⟩
  · refine fun c hc cc _c0 => ⟨⋃₀ c, ?_, ?_⟩
    · exact orthonormal_sUnion_of_directed cc.directedOn fun x xc => hc xc
    · exact fun _ => Set.subset_sUnion_of_mem

open Module

/-- A family of orthonormal vectors with the correct cardinality forms a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b398494eadbbe032fd777026bc3b3ca030bf19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
