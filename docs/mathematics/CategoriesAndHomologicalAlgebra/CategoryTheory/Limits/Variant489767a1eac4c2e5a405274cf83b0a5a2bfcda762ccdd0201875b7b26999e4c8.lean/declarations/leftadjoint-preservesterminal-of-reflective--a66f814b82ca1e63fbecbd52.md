# leftAdjoint_preservesTerminal_of_reflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f91b124d1e98a6e9005e55db78b40831d951c7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffe2ff39-cd66-88b3-c80c-9a61173c8b48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:244138d6-0717-e17c-5102-c2cfc1d39ecf",
  "kind": "lemma",
  "lexical_name": "leftAdjoint_preservesTerminal_of_reflective",
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
  "slug": "leftadjoint-preservesterminal-of-reflective--a66f814b82ca1e63fbecbd52",
  "source": {
    "blob": "4f91b124d1e98a6e9005e55db78b40831d951c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 356,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a66f814b82ca1e63fbecbd5224b6381d5a9abe0b69e6291967196ced3ba41c9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:244138d6-0717-e17c-5102-c2cfc1d39ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftAdjoint_preservesTerminal_of_reflective (R : D ⥤ C) [Reflective R] :
    PreservesLimitsOfShape (Discrete.{v} PEmpty) (monadicLeftAdjoint R) where
  preservesLimit {K} := by
    let F := Functor.empty.{v} D
    letI : PreservesLimit (F ⋙ R) (monadicLeftAdjoint R) := by
      constructor
      intro c h
      haveI : HasLimit (F ⋙ R) := ⟨⟨⟨c, h⟩⟩⟩
      haveI : HasLimit F := hasLimit_of_reflective F R
      constructor
      apply isLimitChangeEmptyCone D (limit.isLimit F)
      apply (asIso ((monadicAdjunction R).counit.app _)).symm.trans
      apply (monadicLeftAdjoint R).mapIso
      letI := monadicCreatesLimits.{v, v} R
      let A := CategoryTheory.preservesLimit_of_createsLimit_and_hasLimit F R
      apply (isLimitOfPreserves _ (limit.isLimit F)).conePointUniqueUpToIso h
    apply preservesLimit_of_iso_diagram _ (Functor.emptyExt (F ⋙ R) _)

end

-- We dualise all of the above for comonads.
namespace Comonad

variable {T : Comonad C}

namespace ForgetCreatesColimits'

variable (D : J ⥤ Coalgebra T) (c : Cocone (D ⋙ T.forget)) (t : IsColimit c)

/-- (Impl) The natural transformation used to define the new cocone -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f91b124d1e98a6e9005e55db78b40831d951c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
