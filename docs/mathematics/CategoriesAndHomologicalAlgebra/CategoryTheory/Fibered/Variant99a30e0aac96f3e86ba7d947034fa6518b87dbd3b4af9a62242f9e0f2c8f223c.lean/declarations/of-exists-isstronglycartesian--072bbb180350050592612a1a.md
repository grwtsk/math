# of_exists_isStronglyCartesian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d63c3022-5591-c11a-203f-07516a6c417e",
  "kind": "lemma",
  "lexical_name": "of_exists_isStronglyCartesian",
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
  "slug": "of-exists-isstronglycartesian--072bbb180350050592612a1a",
  "source": {
    "blob": "c53d5f9a58da6094d19f80272fad4697203a960e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:072bbb180350050592612a1ac43887bc0506e2f3fc2f7eff8a13b55c3d2be7eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d63c3022-5591-c11a-203f-07516a6c417e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma of_exists_isStronglyCartesian {p : 𝒳 ⥤ 𝒮}
    (h : ∀ (a : 𝒳) (R : 𝒮) (f : R ⟶ p.obj a),
      ∃ (b : 𝒳) (φ : b ⟶ a), IsStronglyCartesian p f φ) :
    IsFibered p where
  exists_isCartesian' := by
    intro a R f
    obtain ⟨b, φ, hφ⟩ := h a R f
    refine ⟨b, φ, inferInstance⟩
  comp := fun R S T f g {a b c} φ ψ _ _ =>
    have : p.IsStronglyCartesian f φ := isStronglyCartesian_of_exists_isCartesian p h _ _
    have : p.IsStronglyCartesian g ψ := isStronglyCartesian_of_exists_isCartesian p h _ _
    inferInstance

/-- Given a diagram
```
                  a
                  -
                  |
                  v
T --g--> R --f--> S
```
we have an isomorphism `T ×_S a ≅ T ×_R (R ×_S a)` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c53d5f9a58da6094d19f80272fad4697203a960e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
