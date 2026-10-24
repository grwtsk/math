# PreservesRightHomologyOf.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:963b8f70-701e-4ae9-9332-8c5b52fc2141",
  "kind": "lemma",
  "lexical_name": "PreservesRightHomologyOf.mk'",
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
  "slug": "preservesrighthomologyof-mk--6beb2bc43c1538385a88822e",
  "source": {
    "blob": "e9ba1cf42c53d58773a6d6574ce5a0f6f4154b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 320,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6beb2bc43c1538385a88822e242e8bc5995ea81a27603763d7bcabb39302ca12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:963b8f70-701e-4ae9-9332-8c5b52fc2141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PreservesRightHomologyOf.mk' (h : S.RightHomologyData) [h.IsPreservedBy F] :
    F.PreservesRightHomologyOf S where
  isPreservedBy h' :=
    { f := ShortComplex.RightHomologyData.IsPreservedBy.hf h F
      g' := by
        have := ShortComplex.RightHomologyData.IsPreservedBy.hg' h F
        let e : parallelPair h.g' 0 ≅ parallelPair h'.g' 0 :=
          parallelPair.ext (ShortComplex.opcyclesMapIso' (Iso.refl S) h h') (Iso.refl _)
            (by simp) (by simp)
        exact preservesLimit_of_iso_diagram F e }

end Functor

namespace ShortComplex

variable {S : ShortComplex C} (h₁ : S.LeftHomologyData) (h₂ : S.RightHomologyData)
  (F : C ⥤ D) [F.PreservesZeroMorphisms]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantbbbeeb93385f7276eb59b59bf58e9a93d44f50a7f852d65671d9d609914cf69d.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ba1cf42c53d58773a6d6574ce5a0f6f4154b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
