# vec2_dotProduct'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd5190fcd5011308f55facf7c9fe04707d5ced8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adf05270-0dcd-04fd-2907-b195c9fb1091",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a841bf8a-814f-0007-1cc3-f1fb8f9ee76f",
  "kind": "theorem",
  "lexical_name": "vec2_dotProduct'",
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
  "slug": "vec2-dotproduct--b8f985ba8680c0e8e49fc990",
  "source": {
    "blob": "fd5190fcd5011308f55facf7c9fe04707d5ced8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 507,
    "path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f985ba8680c0e8e49fc990ddad86b2abdfa28b52a91e355e812b272ba92f69",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a841bf8a-814f-0007-1cc3-f1fb8f9ee76f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vec2_dotProduct' {a₀ a₁ b₀ b₁ : α} : ![a₀, a₁] ⬝ᵥ ![b₀, b₁] = a₀ * b₀ + a₁ * b₁ := by
  rw [cons_dotProduct_cons, cons_dotProduct_cons, dotProduct_empty, add_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd5190fcd5011308f55facf7c9fe04707d5ced8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
