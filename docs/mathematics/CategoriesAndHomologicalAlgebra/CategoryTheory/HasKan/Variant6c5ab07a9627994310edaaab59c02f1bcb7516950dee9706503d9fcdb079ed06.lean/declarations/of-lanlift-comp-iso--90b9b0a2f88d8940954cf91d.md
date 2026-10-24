# of_lanLift_comp_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:601761b5-2c3b-1602-3f7b-060151f6e3a8",
  "kind": "theorem",
  "lexical_name": "of_lanLift_comp_iso",
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
  "slug": "of-lanlift-comp-iso--90b9b0a2f88d8940954cf91d",
  "source": {
    "blob": "9818efbd4da005c88cb4ae916705b6f3562d0f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 284,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90b9b0a2f88d8940954cf91d603c3f56bda1f9c2541c470e075ac78f99d20e74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:601761b5-2c3b-1602-3f7b-060151f6e3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_lanLift_comp_iso [HasLeftKanLift f g]
    {x : B} {h : x ⟶ c} [HasLeftKanLift f (h ≫ g)]
    (i : f₊ (h ≫ g) ≅ h ≫ f₊ g)
    (w : lanLiftUnit f (h ≫ g) ≫ i.hom ▷ f = h ◁ lanLiftUnit f g ≫ (α_ _ _ _).inv) :
    LanLift.CommuteWith f g h :=
  ⟨⟨(lanLiftIsKan f (h ≫ g)).ofIsoKan <| StructuredArrow.isoMk i⟩⟩

variable (f : b ⟶ a) (g : c ⟶ a) [HasLeftKanLift f g]
variable {x : B} (h : x ⟶ c) [LanLift.CommuteWith f g h]

/-- Evidence that `h` commutes with the left Kan lift `f₊ g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9818efbd4da005c88cb4ae916705b6f3562d0f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
