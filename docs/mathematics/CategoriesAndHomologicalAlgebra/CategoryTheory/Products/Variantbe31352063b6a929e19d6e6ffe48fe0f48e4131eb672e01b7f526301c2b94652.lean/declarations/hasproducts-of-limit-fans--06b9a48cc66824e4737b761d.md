# hasProducts_of_limit_fans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:963434f0-bb17-04ac-acf6-3160a6388327",
  "kind": "theorem",
  "lexical_name": "hasProducts_of_limit_fans",
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
  "slug": "hasproducts-of-limit-fans--06b9a48cc66824e4737b761d",
  "source": {
    "blob": "6388f8c7a3ed47640ab3cfe274981a6edf8905cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 677,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06b9a48cc66824e4737b761db95a9aa96fcf7c3ec8a080d060bc63a7e90d8236",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:963434f0-bb17-04ac-acf6-3160a6388327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasProducts_of_limit_fans (lf : ∀ {J : Type w} (f : J → C), Fan f)
    (lf_isLimit : ∀ {J : Type w} (f : J → C), IsLimit (lf f)) : HasProducts.{w} C :=
  fun _ : Type w =>
  { has_limit := fun F =>
      HasLimit.mk
        ⟨(Cones.postcompose Discrete.natIsoFunctor.inv).obj (lf fun j => F.obj ⟨j⟩),
          (IsLimit.postcomposeInvEquiv _ _).symm (lf_isLimit _)⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantbe31352063b6a929e19d6e6ffe48fe0f48e4131eb672e01b7f526301c2b94652.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6388f8c7a3ed47640ab3cfe274981a6edf8905cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
