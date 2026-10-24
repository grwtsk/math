# typesGlue_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9fa5fd7-03fb-faa9-fe66-28515c9fe61d",
  "kind": "theorem",
  "lexical_name": "typesGlue_eval",
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
  "slug": "typesglue-eval--1811ade7fb198a4e8372e9ac",
  "source": {
    "blob": "7b1f8bdf7b124450a0ec0fac56303e6d3882c2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1811ade7fb198a4e8372e9ac0da8a27557767964ea4a5af0d71c12e6ca2a9807",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9fa5fd7-03fb-faa9-fe66-28515c9fe61d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typesGlue_eval {S hs α} (s) : typesGlue.{u} S hs α (eval S α s) = s := by
  apply (hs.isSheafFor _ _ (generate_discretePresieve_mem α)).isSeparatedFor.ext
  intro β f hf
  apply (IsSheafFor.valid_glue _ _ _ hf).trans
  apply (FunctorToTypes.map_comp_apply _ _ _ _).symm.trans
  rw [← op_comp]
  --congr 2 -- Porting note: This tactic didn't work. Find an alternative.
  suffices ((↾fun _ ↦ PUnit.unit) ≫ ↾fun _ ↦ f (Classical.choose hf)) = f by rw [this]
  funext x
  exact congr_arg f (Classical.choose_spec hf x).symm

/-- Given a sheaf `S`, construct an equivalence `S(α) ≃ (α → S(*))`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b1f8bdf7b124450a0ec0fac56303e6d3882c2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
