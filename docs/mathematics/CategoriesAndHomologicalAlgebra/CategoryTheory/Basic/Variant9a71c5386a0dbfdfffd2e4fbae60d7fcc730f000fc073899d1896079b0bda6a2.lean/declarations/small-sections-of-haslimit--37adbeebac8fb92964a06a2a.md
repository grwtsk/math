# small_sections_of_hasLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38209c2b-5ffc-a154-206b-af5a87a90982",
  "kind": "lemma",
  "lexical_name": "small_sections_of_hasLimit",
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
  "slug": "small-sections-of-haslimit--37adbeebac8fb92964a06a2a",
  "source": {
    "blob": "69c410916f085e56991cb4c4bba0d99448931472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37adbeebac8fb92964a06a2a85d240f538a7606107d3efac3392c1bef5015b1f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38209c2b-5ffc-a154-206b-af5a87a90982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma small_sections_of_hasLimit
    {C : Type u} [Category.{v} C] {FC : outParam <| C → C → Type*} {CC : outParam <| C → Type v}
    [outParam <| ∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{v} C FC]
    [(forget C).IsCorepresentable] {J : Type w} [Category.{t} J] (G : J ⥤ C) [HasLimit G] :
    Small.{v} (G ⋙ forget C).sections := by
  rw [← Types.hasLimit_iff_small_sections]
  infer_instance

variable {C : Type u} [Category.{v} C] {FC : C → C → Type*} {CC : C → Type r}
variable [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{r} C FC]
variable {J : Type w} [Category.{t} J] (F : J ⥤ C) [PreservesLimit F (forget C)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c410916f085e56991cb4c4bba0d99448931472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
