# mem_essImage_of_unit_isSplitMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b5d3343-1141-cf0e-2fdc-38dfc3d127b0",
  "kind": "theorem",
  "lexical_name": "mem_essImage_of_unit_isSplitMono",
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
  "slug": "mem-essimage-of-unit-issplitmono--d127bad0e754ebc9d378cb9f",
  "source": {
    "blob": "4c634addd1e784ed12c3aa10e8f74cfa94047d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant994aaf0f9bfe22792c400aeac72b20837d4109d2488225cbc2b9ec8d65540f15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d127bad0e754ebc9d378cb9f41eade63fb3701df9af3bd0d9b65ac2fdd79105a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant994aaf0f9bfe22792c400aeac72b20837d4109d2488225cbc2b9ec8d65540f15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5d3343-1141-cf0e-2fdc-38dfc3d127b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_essImage_of_unit_isSplitMono [Reflective i] {A : C}
    [IsSplitMono ((reflectorAdjunction i).unit.app A)] : i.essImage A := by
  let η : 𝟭 C ⟶ reflector i ⋙ i := (reflectorAdjunction i).unit
  have : IsIso (η.app (i.obj ((reflector i).obj A))) :=
    Functor.essImage.unit_isIso ((i.obj_mem_essImage _))
  have : Epi (η.app A) := by
    refine @epi_of_epi _ _ _ _ _ (retraction (η.app A)) (η.app A) ?_
    rw [show retraction _ ≫ η.app A = _ from η.naturality (retraction (η.app A))]
    apply epi_comp (η.app (i.obj ((reflector i).obj A)))
  have := isIso_of_epi_of_isSplitMono (η.app A)
  exact (reflectorAdjunction i).mem_essImage_of_unit_isIso A

/-- Composition of reflective functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant994aaf0f9bfe22792c400aeac72b20837d4109d2488225cbc2b9ec8d65540f15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant994aaf0f9bfe22792c400aeac72b20837d4109d2488225cbc2b9ec8d65540f15.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c634addd1e784ed12c3aa10e8f74cfa94047d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
