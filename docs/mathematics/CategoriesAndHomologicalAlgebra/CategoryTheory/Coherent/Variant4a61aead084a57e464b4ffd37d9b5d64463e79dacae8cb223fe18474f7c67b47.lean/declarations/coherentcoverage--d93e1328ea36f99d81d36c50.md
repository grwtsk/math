# coherentCoverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58595673173a65be36dcec57f02dd17ff994348f3b3fcb82ac5e91423eaa46f5",
  "kind": "def",
  "lexical_name": "coherentCoverage",
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
  "slug": "coherentcoverage--d93e1328ea36f99d81d36c50",
  "source": {
    "blob": "a9cc8664e802a6093bf5c28ad2eb964841375d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d93e1328ea36f99d81d36c50b9275b34f7e24ddd65683f8569b2a1aa58a3c71f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58595673173a65be36dcec57f02dd17ff994348f3b3fcb82ac5e91423eaa46f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coherentCoverage [Precoherent C] : Coverage C where
  covering B := { S | ∃ (α : Type) (_ : Fintype α) (X : α → C) (π : (a : α) → (X a ⟶ B)),
    S = Presieve.ofArrows X π ∧ EffectiveEpiFamily X π }
  pullback := by
    rintro B₁ B₂ f S ⟨α, _, X₁, π₁, rfl, hS⟩
    obtain ⟨β,_,X₂,π₂,h,i,ι,hh⟩ := Precoherent.pullback f α X₁ π₁ hS
    refine ⟨Presieve.ofArrows X₂ π₂, ⟨β, inferInstance, X₂, π₂, rfl, h⟩, ?_⟩
    rintro _ _ ⟨b⟩
    refine ⟨(X₁ (i b)), ι _, π₁ _, ⟨_⟩, hh _⟩

/--
The coherent Grothendieck topology on a precoherent category `C`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherent/Variant4a61aead084a57e464b4ffd37d9b5d64463e79dacae8cb223fe18474f7c67b47.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9cc8664e802a6093bf5c28ad2eb964841375d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
