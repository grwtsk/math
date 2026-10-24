# lequivCongrLeft_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02545463-0b69-f168-ad10-d07a93457758",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8852697-2a33-afb1-ff8f-286e15fdb6c9",
  "kind": "theorem",
  "lexical_name": "lequivCongrLeft_apply",
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
  "slug": "lequivcongrleft-apply--8db894a8454ffe4873522d95",
  "source": {
    "blob": "e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8db894a8454ffe4873522d95647a59de48fd35b22d41f98952dddbae1f734230",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8852697-2a33-afb1-ff8f-286e15fdb6c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lequivCongrLeft_apply (h : ι ≃ κ) (f : ⨁ i, M i) (k : κ) :
    lequivCongrLeft R h f k = f (h.symm k) :=
  equivCongrLeft_apply _ _ _

end CongrLeft

section Sigma

variable {α : ι → Type*} {δ : ∀ i, α i → Type w}
variable [DecidableEq ι] [∀ i j, AddCommMonoid (δ i j)] [∀ i j, Module R (δ i j)]

/-- `curry` as a linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantaf5a288acea251b197ea9b3453fe7d32d5bac6776a70d159bbddcdb602569d50.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69bbfdf0f2885aefba1a5eee6a1ba9e621d4760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
