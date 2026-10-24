# restrict_nondegenerate_orthogonal_spanSingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1767ed927c2ad3dd40379d94fc1914d41d44ef10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f07103b-ab7f-611e-08ef-ae09e13a641e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41219b28-2734-09fe-d30c-1be0f5a2de02",
  "kind": "theorem",
  "lexical_name": "restrict_nondegenerate_orthogonal_spanSingleton",
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
  "slug": "restrict-nondegenerate-orthogonal-spansingleton--5ffaa2e6821adb29ba30a99a",
  "source": {
    "blob": "1767ed927c2ad3dd40379d94fc1914d41d44ef10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 401,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ffaa2e6821adb29ba30a99aaa800e8b535fce328ea7de4f0e9eeb1db92e92f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41219b28-2734-09fe-d30c-1be0f5a2de02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_nondegenerate_orthogonal_spanSingleton (B : BilinForm K V) (b₁ : B.Nondegenerate)
    (b₂ : B.IsRefl) {x : V} (hx : ¬B.IsOrtho x x) :
    Nondegenerate <| B.restrict <| B.orthogonal (K ∙ x) := by
  refine fun m hm => Submodule.coe_eq_zero.1 (b₁ m.1 fun n => ?_)
  have : n ∈ (K ∙ x) ⊔ B.orthogonal (K ∙ x) :=
    (span_singleton_sup_orthogonal_eq_top hx).symm ▸ Submodule.mem_top
  rcases Submodule.mem_sup.1 this with ⟨y, hy, z, hz, rfl⟩
  specialize hm ⟨z, hz⟩
  rw [restrict] at hm
  erw [add_right, show B m.1 y = 0 by rw [b₂]; exact m.2 y hy, hm, add_zero]

end BilinForm

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variantb3a95a3ef4c0daab39f7f5d20be67a3575520cae06503adae96424a8324d115f.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1767ed927c2ad3dd40379d94fc1914d41d44ef10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
