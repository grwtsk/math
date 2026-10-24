# isIso_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d10b44639e34d0750b039cf30b44ead5eb56ac0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8dc69ac-52cb-579c-e2ee-71e0df032457",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df24504b-1272-81f9-c3f7-882abc5cac0a",
  "kind": "theorem",
  "lexical_name": "isIso_prod_iff",
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
  "slug": "isiso-prod-iff--dae0b3324852769b1c24629c",
  "source": {
    "blob": "d10b44639e34d0750b039cf30b44ead5eb56ac0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae0b3324852769b1c24629ccd00fa8f543c5a685bcd8a6797557177ba95022a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df24504b-1272-81f9-c3f7-882abc5cac0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_prod_iff {P Q : C} {S T : D} {f : (P, S) ⟶ (Q, T)} :
    IsIso f ↔ IsIso f.1 ∧ IsIso f.2 := by
  constructor
  · rintro ⟨g, hfg, hgf⟩
    simp at hfg hgf
    rcases hfg with ⟨hfg₁, hfg₂⟩
    rcases hgf with ⟨hgf₁, hgf₂⟩
    exact ⟨⟨⟨g.1, hfg₁, hgf₁⟩⟩, ⟨⟨g.2, hfg₂, hgf₂⟩⟩⟩
  · rintro ⟨⟨g₁, hfg₁, hgf₁⟩, ⟨g₂, hfg₂, hgf₂⟩⟩
    dsimp at hfg₁ hgf₁ hfg₂ hgf₂
    refine' ⟨⟨(g₁, g₂), _, _⟩⟩
    repeat { simp; constructor; assumption; assumption }
#align category_theory.is_iso_prod_iff CategoryTheory.isIso_prod_iff

section

variable {C D}

/-- The isomorphism between `(X.1, X.2)` and `X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10b44639e34d0750b039cf30b44ead5eb56ac0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
