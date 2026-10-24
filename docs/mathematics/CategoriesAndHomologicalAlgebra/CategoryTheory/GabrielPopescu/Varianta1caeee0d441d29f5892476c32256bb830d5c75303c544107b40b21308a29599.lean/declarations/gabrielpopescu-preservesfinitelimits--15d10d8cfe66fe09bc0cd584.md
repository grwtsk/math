# GabrielPopescu.preservesFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c47be709-ecc8-7aa8-0938-2c79bb8e47ca",
  "kind": "theorem",
  "lexical_name": "GabrielPopescu.preservesFiniteLimits",
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
  "slug": "gabrielpopescu-preservesfinitelimits--15d10d8cfe66fe09bc0cd584",
  "source": {
    "blob": "45a4f51bfabc75216c83f68d34bc6134e5da23f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15d10d8cfe66fe09bc0cd584ee10ffefc7791af8f1cbb416e47419fa82f7f7e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c47be709-ecc8-7aa8-0938-2c79bb8e47ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GabrielPopescu.preservesFiniteLimits (G : C) (hG : IsSeparator G) :
    PreservesFiniteLimits (tensorObj G) := by
  have := preservesInjectiveObjects G hG
  have : (tensorObj G).PreservesMonomorphisms :=
    (tensorObj G).preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects
      (tensorObjPreadditiveCoyonedaObjAdjunction G)
  have : PreservesBinaryBiproducts (tensorObj G) :=
    preservesBinaryBiproducts_of_preservesBinaryCoproducts _
  have : (tensorObj G).Additive := Functor.additive_of_preservesBinaryBiproducts _
  have : (tensorObj G).PreservesHomology :=
    (tensorObj G).preservesHomology_of_preservesMonos_and_cokernels
  exact (tensorObj G).preservesFiniteLimits_of_preservesHomology

end CategoryTheory.IsGrothendieckAbelian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a4f51bfabc75216c83f68d34bc6134e5da23f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
