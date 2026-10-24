# PInftyToNormalizedMooreComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f459c3e8aaf72bb4354c258f8e0e7958839def313a0a0deaa8e5dab42ea35bd4",
  "kind": "def",
  "lexical_name": "PInftyToNormalizedMooreComplex",
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
  "slug": "pinftytonormalizedmoorecomplex--c8f32b8f96ec59f9eb49f64a",
  "source": {
    "blob": "135fc034add4eda144cc9723e1d4de79182f1cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8f32b8f96ec59f9eb49f64a4b27cc05317f2c9d6466132bb9cadf09a830290e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f459c3e8aaf72bb4354c258f8e0e7958839def313a0a0deaa8e5dab42ea35bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PInftyToNormalizedMooreComplex (X : SimplicialObject A) : K[X] ⟶ N[X] :=
  ChainComplex.ofHom
    (fun n => factorThru _ _ (factors_normalizedMooreComplex_PInfty n)) fun n => by
    rw [← cancel_mono (NormalizedMooreComplex.objX X n).arrow, assoc, assoc, factorThru_arrow,
      ← inclusionOfMooreComplexMap_f, NormalizedMooreComplex.obj_d, ChainComplex.of_d,
      ← normalizedMooreComplex_objD, ← (inclusionOfMooreComplexMap X).comm (n + 1) n,
      inclusionOfMooreComplexMap_f, factorThru_arrow_assoc, alternatingFaceMapComplex_obj_d,
      ← alternatingFaceMapComplex_obj_d]
    exact PInfty.comm (n + 1) n

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant148a4e8ea2291cf440aa6b841d187ce2d727af3243649c8fff3c894463cbd671.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135fc034add4eda144cc9723e1d4de79182f1cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
