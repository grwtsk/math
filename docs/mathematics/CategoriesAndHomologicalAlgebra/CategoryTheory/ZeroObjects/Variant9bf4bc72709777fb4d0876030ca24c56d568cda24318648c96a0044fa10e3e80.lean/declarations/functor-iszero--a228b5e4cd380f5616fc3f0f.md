# Functor.isZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:083912e1-927a-d83c-0434-5f377e6e3955",
  "kind": "theorem",
  "lexical_name": "Functor.isZero",
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
  "slug": "functor-iszero--a228b5e4cd380f5616fc3f0f",
  "source": {
    "blob": "74adaf404c7da9ccf5e247be989f0f68fbccfdcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 147,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a228b5e4cd380f5616fc3f0f7ca32a047113d74c12ad0454179e1ae72b9be0b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:083912e1-927a-d83c-0434-5f377e6e3955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.isZero (F : C ⥤ D) (hF : ∀ X, IsZero (F.obj X)) : IsZero F := by
  constructor <;> intro G <;> refine ⟨⟨⟨?_⟩, ?_⟩⟩
  · refine
      { app := fun X => (hF _).to_ _
        naturality := ?_ }
    intros
    exact (hF _).eq_of_src _ _
  · intro f
    ext
    apply (hF _).eq_of_src _ _
  · refine
      { app := fun X => (hF _).from_ _
        naturality := ?_ }
    intros
    exact (hF _).eq_of_tgt _ _
  · intro f
    ext
    apply (hF _).eq_of_tgt _ _

namespace Limits

variable (C)

/-- A category "has a zero object" if it has an object which is both initial and terminal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variant9bf4bc72709777fb4d0876030ca24c56d568cda24318648c96a0044fa10e3e80.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74adaf404c7da9ccf5e247be989f0f68fbccfdcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
