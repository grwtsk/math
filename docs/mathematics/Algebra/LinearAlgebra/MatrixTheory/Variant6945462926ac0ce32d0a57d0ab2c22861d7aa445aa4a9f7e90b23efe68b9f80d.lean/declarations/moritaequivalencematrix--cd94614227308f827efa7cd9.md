# moritaEquivalenceMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ba521f54bc117a170cb008fbe7037d87f6d9d4f0cfcf87a3fc0ef1dfa4ae889",
  "kind": "def",
  "lexical_name": "moritaEquivalenceMatrix",
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
  "slug": "moritaequivalencematrix--cd94614227308f827efa7cd9",
  "source": {
    "blob": "7af8934071ad3b5dcba8143edbfc7f938cbf47af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd94614227308f827efa7cd9fb5cc19fb35ef212db13014a71dd1c515bcb3738",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ba521f54bc117a170cb008fbe7037d87f6d9d4f0cfcf87a3fc0ef1dfa4ae889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moritaEquivalenceMatrix (R₀ : Type*) [CommRing R₀] [Algebra R₀ R] (i : ι) :
    MoritaEquivalence R₀ R (Matrix ι ι R) where
  eqv := ModuleCat.matrixEquivalence R i
  linear.map_smul {X Y} f r := by
    ext (v : ι → X)
    simp only [ModuleCat.matrixEquivalence_functor, ModuleCat.toMatrixModCat_obj_carrier,
      ModuleCat.toMatrixModCat_map, ModuleCat.hom_smul, ModuleCat.hom_ofHom, LinearMap.smul_apply]
    ext i
    simp only [LinearMap.mapMatrixModule_apply, LinearMap.compLeft_apply, Function.comp_apply,
      LinearMap.smul_apply]
    change _ = ((algebraMap R₀ (Matrix ι ι R) r) • ((ModuleCat.Hom.hom f).mapMatrixModule ι v)) i
    simp [Matrix.algebraMap_matrix_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7af8934071ad3b5dcba8143edbfc7f938cbf47af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
