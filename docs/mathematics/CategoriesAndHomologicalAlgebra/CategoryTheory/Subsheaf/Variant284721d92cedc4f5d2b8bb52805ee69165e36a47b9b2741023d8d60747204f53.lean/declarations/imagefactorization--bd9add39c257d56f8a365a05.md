# imageFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:391ce8f1affa36a13dbf3384807200629d6a59282383e8218b131d3fefefd5ae",
  "kind": "def",
  "lexical_name": "imageFactorization",
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
  "slug": "imagefactorization--bd9add39c257d56f8a365a05",
  "source": {
    "blob": "117af275faa0934952fb1cd28e0bf3b1fade2e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 456,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd9add39c257d56f8a365a05d45fc1a269e175ab215a7262f0da9d17b984b940",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:391ce8f1affa36a13dbf3384807200629d6a59282383e8218b131d3fefefd5ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def imageFactorization {F F' : Sheaf J TypeMax.{v, u}} (f : F ⟶ F') :
    Limits.ImageFactorisation f where
  F := imageMonoFactorization f
  isImage :=
    { lift := fun I => by
        -- port note: need to specify the target category (TypeMax.{v, u}) for this to work.
        haveI M := (Sheaf.Hom.mono_iff_presheaf_mono J TypeMax.{v, u} _).mp I.m_mono
        haveI := isIso_toImagePresheaf I.m.1
        refine' ⟨Subpresheaf.homOfLe _ ≫ inv (toImagePresheaf I.m.1)⟩
        apply Subpresheaf.sheafify_le
        · conv_lhs => rw [← I.fac]
          apply imagePresheaf_comp_le
        · rw [← isSheaf_iff_isSheaf_of_type]
          exact F'.2
        · apply Presieve.isSheaf_iso J (asIso <| toImagePresheaf I.m.1)
          rw [← isSheaf_iff_isSheaf_of_type]
          exact I.I.2
      lift_fac := fun I => by
        ext1
        dsimp [imageMonoFactorization]
        generalize_proofs h
        rw [← Subpresheaf.homOfLe_ι h, Category.assoc]
        congr 1
        rw [IsIso.inv_comp_eq, toImagePresheaf_ι] }
#align category_theory.grothendieck_topology.image_factorization CategoryTheory.GrothendieckTopology.imageFactorization

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117af275faa0934952fb1cd28e0bf3b1fade2e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
