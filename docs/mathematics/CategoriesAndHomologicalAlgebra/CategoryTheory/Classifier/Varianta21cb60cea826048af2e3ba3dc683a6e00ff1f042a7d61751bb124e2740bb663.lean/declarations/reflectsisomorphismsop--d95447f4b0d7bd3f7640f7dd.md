# reflectsIsomorphismsOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f158b70e47783638f3496e1629e266e2e87b6991d8cf55a8d1a84058951c2bf",
  "kind": "instance",
  "lexical_name": "reflectsIsomorphismsOp",
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
  "slug": "reflectsisomorphismsop--d95447f4b0d7bd3f7640f7dd",
  "source": {
    "blob": "02b938723665cc8281c53000424d702d7504b8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d95447f4b0d7bd3f7640f7ddcee781f604dddf5815fed96262bdc958e2fc06d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f158b70e47783638f3496e1629e266e2e87b6991d8cf55a8d1a84058951c2bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance reflectsIsomorphismsOp (D : Type u₀) [Category.{v₀} D] (F : Cᵒᵖ ⥤ D)
    [Functor.Faithful F] :
    Functor.ReflectsIsomorphisms F :=
  reflectsIsomorphisms_of_reflectsMonomorphisms_of_reflectsEpimorphisms F

end
end HasClassifier

/-! ### The representability theorem of subobject classifiers -/

section Representability

namespace Classifier

open Subobject HasClassifier

/-! #### From classifiers to representations -/

section RepresentableBy

variable {C : Type u} [Category.{v} C] [HasTerminal C] [HasPullbacks C] (𝒞 : Classifier C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Varianta21cb60cea826048af2e3ba3dc683a6e00ff1f042a7d61751bb124e2740bb663.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b938723665cc8281c53000424d702d7504b8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
