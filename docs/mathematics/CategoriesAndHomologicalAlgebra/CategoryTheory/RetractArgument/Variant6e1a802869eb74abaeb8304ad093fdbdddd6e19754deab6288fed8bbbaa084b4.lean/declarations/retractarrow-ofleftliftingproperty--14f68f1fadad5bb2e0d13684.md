# RetractArrow.ofLeftLiftingProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e39ef8d9b90937353ff4854b5c15b8fa34b9a3b83b4f85703dbdebcd8409c5d",
  "kind": "def",
  "lexical_name": "RetractArrow.ofLeftLiftingProperty",
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
  "slug": "retractarrow-ofleftliftingproperty--14f68f1fadad5bb2e0d13684",
  "source": {
    "blob": "544842d561a5e5827f8c21e9b80ae1c182cfcf1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14f68f1fadad5bb2e0d136847883deae66b5a40ea1b6cc7e4b0b6a29711822e5",
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

Occurrence: `declaration:9e39ef8d9b90937353ff4854b5c15b8fa34b9a3b83b4f85703dbdebcd8409c5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def RetractArrow.ofLeftLiftingProperty
    {X Y Z : C} {f : X ⟶ Z} {i : X ⟶ Y} {p : Y ⟶ Z} (h : i ≫ p = f)
    [HasLiftingProperty f p] : RetractArrow f i :=
  have sq : CommSq i f p (𝟙 _) := ⟨by simp [h]⟩
  { i := Arrow.homMk (𝟙 X) sq.lift
    r := Arrow.homMk (𝟙 X) p }

/-- If `i ≫ p = f`, and `f` has the right lifting property with respect to `i`,
then `f` is a retract of `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544842d561a5e5827f8c21e9b80ae1c182cfcf1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
