# extendFanIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71a04ab3cfc864c2cff9d97e5a828ec9a5172628e41b55402e7f194fc937cd9e",
  "kind": "def",
  "lexical_name": "extendFanIsLimit",
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
  "slug": "extendfanislimit--a7a0f4e4e289a0bcc47b99f7",
  "source": {
    "blob": "953d5c2a5065c6bfaff019246da4178cad64372a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7a0f4e4e289a0bcc47b99f74c8b6a48e280d3fdfcaabb1151ecfbf8aa83f357",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71a04ab3cfc864c2cff9d97e5a828ec9a5172628e41b55402e7f194fc937cd9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendFanIsLimit {n : ℕ} (f : Fin (n + 1) → C) {c₁ : Fan fun i : Fin n => f i.succ}
    {c₂ : BinaryFan (f 0) c₁.pt} (t₁ : IsLimit c₁) (t₂ : IsLimit c₂) :
    IsLimit (extendFan c₁ c₂) where
  lift s := by
    apply (BinaryFan.IsLimit.lift' t₂ (s.π.app ⟨0⟩) _).1
    apply t₁.lift ⟨_, Discrete.natTrans fun ⟨i⟩ => s.π.app ⟨i.succ⟩⟩
  fac := fun s ⟨j⟩ => by
    refine Fin.inductionOn j ?_ ?_
    · apply (BinaryFan.IsLimit.lift' t₂ _ _).2.1
    · rintro i -
      dsimp only [extendFan_π_app]
      rw [Fin.cases_succ, ← assoc, (BinaryFan.IsLimit.lift' t₂ _ _).2.2, t₁.fac]
      rfl
  uniq s m w := by
    apply BinaryFan.IsLimit.hom_ext t₂
    · rw [(BinaryFan.IsLimit.lift' t₂ _ _).2.1]
      apply w ⟨0⟩
    · rw [(BinaryFan.IsLimit.lift' t₂ _ _).2.2]
      apply t₁.uniq ⟨_, _⟩
      rintro ⟨j⟩
      rw [assoc]
      dsimp only [Discrete.natTrans_app]
      rw [← w ⟨j.succ⟩]
      dsimp only [extendFan_π_app]
      rw [Fin.cases_succ]

section

variable [HasBinaryProducts C] [HasTerminal C]

/-- If `C` has a terminal object and binary products, then it has a product for objects indexed by
`Fin n`.
This is a helper lemma for `hasFiniteProducts_of_has_binary_and_terminal`, which is more general
than this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantb5e3da9b286753babc38b542b53dd935ea230a53eed71a34cea5acfbeaa8983b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `953d5c2a5065c6bfaff019246da4178cad64372a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
