# pasteVertIsPullbackEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d31d8ed67d2e35ebf0a5d984547fb1b523438b9cca65e72d6e2664c4f87f8210",
  "kind": "def",
  "lexical_name": "pasteVertIsPullbackEquiv",
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
  "slug": "pastevertispullbackequiv--6dc4689a924f060897093d4b",
  "source": {
    "blob": "6790398f308afac9f4b482be7aad4c8f1e5e512d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dc4689a924f060897093d4b9d0300bb56e42388859727ee059533d271e46cb8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d31d8ed67d2e35ebf0a5d984547fb1b523438b9cca65e72d6e2664c4f87f8210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def pasteVertIsPullbackEquiv (H : IsLimit t₁) : IsLimit (t₁.pasteVert t₂ hi₂) ≃ IsLimit t₂ where
  toFun H' := topSquareIsPullback t₂ _ H H'
  invFun H' := pasteVertIsPullback _ H H'
  left_inv _ := Subsingleton.elim _ _
  right_inv _ := Subsingleton.elim _ _

end PastePullbackVert

section PastePushoutHoriz

/- Let's consider the following diagram
```
X₁ - f₁ -> X₂ - f₂ -> X₃
|          |          |
i₁         i₂         i₃
∨          ∨          ∨
Y₁ - g₁ -> Y₂ - g₂ -> Y₃
```
where `t₁` denotes the left pushout cocone, and `t₂` denotes the right pushout cocone.
-/
variable {X₁ X₂ X₃ Y₁ : C} {f₁ : X₁ ⟶ X₂} {f₂ : X₂ ⟶ X₃} {i₁ : X₁ ⟶ Y₁}

/-- The pushout cocone obtained by pasting two pushout cocones horizontally. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6790398f308afac9f4b482be7aad4c8f1e5e512d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
