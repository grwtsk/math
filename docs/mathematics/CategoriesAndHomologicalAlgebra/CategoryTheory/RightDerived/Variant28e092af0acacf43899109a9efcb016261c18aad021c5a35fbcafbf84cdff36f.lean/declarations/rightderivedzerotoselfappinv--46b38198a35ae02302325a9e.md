# rightDerivedZeroToSelfAppInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74d20740df7dac5912e266366263989856706cf4e31765f726f538fbff827bc0",
  "kind": "def",
  "lexical_name": "rightDerivedZeroToSelfAppInv",
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
  "slug": "rightderivedzerotoselfappinv--46b38198a35ae02302325a9e",
  "source": {
    "blob": "96594270e51832241dd47f57e03ab6af24256598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 229,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46b38198a35ae02302325a9e22c232108e94284c06681a5e176b9ed4da681cef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74d20740df7dac5912e266366263989856706cf4e31765f726f538fbff827bc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightDerivedZeroToSelfAppInv [EnoughInjectives C] {X : C} (P : InjectiveResolution X) :
    F.obj X ⟶ (F.rightDerived 0).obj X :=
  homology.lift _ _ _ (F.map (P.ι.f 0) ≫ cokernel.π _)
      (by
        have : (ComplexShape.up ℕ).Rel 0 1 := rfl
        rw [Category.assoc, cokernel.π_desc, HomologicalComplex.dFrom_eq _ this,
          mapHomologicalComplex_obj_d, ← Category.assoc, ← Functor.map_comp]
        simp only [InjectiveResolution.ι_f_zero_comp_complex_d, Functor.map_zero, zero_comp]) ≫
    (rightDerivedObjIso F 0 P).inv
#align category_theory.abelian.functor.right_derived_zero_to_self_app_inv CategoryTheory.Abelian.Functor.rightDerivedZeroToSelfAppInv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant28e092af0acacf43899109a9efcb016261c18aad021c5a35fbcafbf84cdff36f.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96594270e51832241dd47f57e03ab6af24256598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
