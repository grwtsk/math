# equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6158936caedc4b7ced8c0f74c0dc0b4dc812e8525ca129487a9eb8908d18b58a",
  "kind": "def",
  "lexical_name": "equivalence",
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
  "slug": "equivalence--dddaadc3381b93637e20e3cc",
  "source": {
    "blob": "b3d0afdf47f80c44d743829410cb7943d047b4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 117,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dddaadc3381b93637e20e3cc1d8df9835718e9ac8ca04e3b449e541d8e5e8cfb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6158936caedc4b7ced8c0f74c0dc0b4dc812e8525ca129487a9eb8908d18b58a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalence (A : Type u₃) [Category.{v₃} A] [∀ X, HasLimitsOfShape (StructuredArrow X F.op) A] :
    haveI := F.reflects_precoherent
    Sheaf (coherentTopology C) A ≌ Sheaf (coherentTopology D) A :=
  Functor.IsDenseSubsite.sheafEquiv _ _ F _

end SheafEquiv

section RegularExtensive

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D] (F : C ⥤ D)
  [F.PreservesEffectiveEpis] [F.ReflectsEffectiveEpis]
  [F.Full] [F.Faithful]
  [FinitaryExtensive D] [Preregular D]
  [FinitaryPreExtensive C]
  [PreservesFiniteCoproducts F]
  [F.EffectivelyEnough]

/--
The equivalence from coherent sheaves on `C` to coherent sheaves on `D`, given a fully faithful
functor `F : C ⥤ D` to an extensive preregular category, which preserves and reflects effective
epimorphisms and satisfies `F.EffectivelyEnough`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafComparison/Variant1e1482e1b29048ac8c34a449591e5d56a36be4a18c9997e3bb24b79d24862283.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d0afdf47f80c44d743829410cb7943d047b4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
