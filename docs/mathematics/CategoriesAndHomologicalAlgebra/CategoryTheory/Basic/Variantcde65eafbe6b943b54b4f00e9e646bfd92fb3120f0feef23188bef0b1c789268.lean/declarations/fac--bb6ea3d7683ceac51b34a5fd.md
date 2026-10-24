# fac'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f69acf6180035e480a922a05f4853fde06f8a77f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17dda325-3fa6-84a4-a530-fb9e40b527d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b75d94fe-9f29-f963-e138-dd974f44d3f0",
  "kind": "lemma",
  "lexical_name": "fac'",
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
  "slug": "fac--bb6ea3d7683ceac51b34a5fd",
  "source": {
    "blob": "f69acf6180035e480a922a05f4853fde06f8a77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb6ea3d7683ceac51b34a5fdbf2633d5de4d7c63a7921275f338c321b7c39394",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b75d94fe-9f29-f963-e138-dd974f44d3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fac' {x y : C × D} (f : x ⟶ y) :
    f = ((f.1, 𝟙 x.2) : _ ⟶ ⟨y.1, x.2⟩) ≫ (𝟙 y.1, f.2) := by aesop

end Prod

section

variable (C : Type u₁) [Category.{v₁} C] (D : Type u₂) [Category.{v₂} D]

/-- The "evaluation at `X`" functor, such that
`(evaluation.obj X).obj F = F.obj X`,
which is functorial in both `X` and `F`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcde65eafbe6b943b54b4f00e9e646bfd92fb3120f0feef23188bef0b1c789268.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f69acf6180035e480a922a05f4853fde06f8a77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
