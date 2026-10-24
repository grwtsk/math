# HasForget₂.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3ccdbf3614d4698b4a788c34af4a9cb18724a635c9025ed301b87ca931bb035",
  "kind": "def",
  "lexical_name": "HasForget₂.trans",
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
  "slug": "hasforget-trans--2bd076cc494827ffb33a8b6d",
  "source": {
    "blob": "b04becac2393c1831d27df0b0f7f6842d1449961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bd076cc494827ffb33a8b6da2488b44069edf05b7590bd71e6549b1f82bcf15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3ccdbf3614d4698b4a788c34af4a9cb18724a635c9025ed301b87ca931bb035`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasForget₂.trans (E : Type*) [Category* E] {FE : outParam <| E → E → Type*}
    {CE : outParam <| E → Type w}
    [outParam <| ∀ X Y, FunLike (FE X Y) (CE X) (CE Y)] [ConcreteCategory.{w} E FE]
    [HasForget₂ C D] [HasForget₂ D E] : HasForget₂ C E where
  forget₂ := CategoryTheory.forget₂ C D ⋙ CategoryTheory.forget₂ D E
  forget_comp := by
    change (CategoryTheory.forget₂ _ D) ⋙ (CategoryTheory.forget₂ D E ⋙ CategoryTheory.forget E) = _
    simp only [HasForget₂.forget_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04becac2393c1831d27df0b0f7f6842d1449961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
