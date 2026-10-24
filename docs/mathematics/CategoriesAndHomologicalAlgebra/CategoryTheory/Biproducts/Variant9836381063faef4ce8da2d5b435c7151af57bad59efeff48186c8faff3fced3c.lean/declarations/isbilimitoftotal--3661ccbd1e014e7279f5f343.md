# isBilimitOfTotal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed3124545de2766f219c887b9fc618e3fd01a1c96340b3cbbd1b0651fea6164a",
  "kind": "def",
  "lexical_name": "isBilimitOfTotal",
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
  "slug": "isbilimitoftotal--3661ccbd1e014e7279f5f343",
  "source": {
    "blob": "92645c7d2e57e1d95e923ee969f0b124a1ac66c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3661ccbd1e014e7279f5f343192df1aa66efee20e2ba8f99ff3b2f8259f4f9bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed3124545de2766f219c887b9fc618e3fd01a1c96340b3cbbd1b0651fea6164a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isBilimitOfTotal {f : J → C} (b : Bicone f) (total : ∑ j : J, b.π j ≫ b.ι j = 𝟙 b.pt) :
    b.IsBilimit where
  isLimit :=
    { lift := fun s => ∑ j : J, s.π.app ⟨j⟩ ≫ b.ι j
      uniq := fun s m h => by
        rw [← Category.comp_id m]
        dsimp
        rw [← total, comp_sum]
        apply Finset.sum_congr rfl
        intro j _
        have reassoced : m ≫ Bicone.π b j ≫ Bicone.ι b j = s.π.app ⟨j⟩ ≫ Bicone.ι b j := by
          simpa using eq_whisker (h ⟨j⟩) _
        rw [reassoced]
      fac := fun s j => by
        classical
        cases j
        simp only [sum_comp, Category.assoc, Bicone.toCone_π_app, b.ι_π, comp_dite]
        -- See note [dsimp, simp].
        dsimp
        simp }
  isColimit :=
    { desc := fun s => ∑ j : J, b.π j ≫ s.ι.app ⟨j⟩
      uniq := fun s m h => by
        rw [← Category.id_comp m]
        dsimp
        rw [← total, sum_comp]
        apply Finset.sum_congr rfl
        intro j _
        simpa using b.π j ≫= h ⟨j⟩
      fac := fun s j => by
        classical
        cases j
        simp only [comp_sum, ← Category.assoc, Bicone.toCocone_ι_app, b.ι_π, dite_comp]
        dsimp; simp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant9836381063faef4ce8da2d5b435c7151af57bad59efeff48186c8faff3fced3c.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92645c7d2e57e1d95e923ee969f0b124a1ac66c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
