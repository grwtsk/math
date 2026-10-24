# RetractArrow.ofRightLiftingProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eef18fb5b6f6cf1fcefcf9d12859b2c0b4240012dd8fcfca74f3ffa53112a42",
  "kind": "def",
  "lexical_name": "RetractArrow.ofRightLiftingProperty",
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
  "slug": "retractarrow-ofrightliftingproperty--3f9f5443f81641eb714c9233",
  "source": {
    "blob": "544842d561a5e5827f8c21e9b80ae1c182cfcf1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f9f5443f81641eb714c9233e86e6086d4e3f5879cc754ed9ada8d3ac4182c2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eef18fb5b6f6cf1fcefcf9d12859b2c0b4240012dd8fcfca74f3ffa53112a42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def RetractArrow.ofRightLiftingProperty
    {X Y Z : C} {f : X ⟶ Z} {i : X ⟶ Y} {p : Y ⟶ Z} (h : i ≫ p = f)
    [HasLiftingProperty i f] : RetractArrow f p :=
  have sq : CommSq (𝟙 _) i f p := ⟨by simp [h]⟩
  { i := Arrow.homMk i (𝟙 _)
    r := Arrow.homMk sq.lift (𝟙 _) }

namespace MorphismProperty

variable {W₁ W₂ : MorphismProperty C}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544842d561a5e5827f8c21e9b80ae1c182cfcf1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
