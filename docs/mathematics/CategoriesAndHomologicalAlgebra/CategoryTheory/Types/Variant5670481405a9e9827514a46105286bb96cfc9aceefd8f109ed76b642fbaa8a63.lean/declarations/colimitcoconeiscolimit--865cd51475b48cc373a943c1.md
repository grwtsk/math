# colimitCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:302c597c4340ab75b860e807996e76e35f726c93ff8275dd1a0b328a16807c06",
  "kind": "def",
  "lexical_name": "colimitCoconeIsColimit",
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
  "slug": "colimitcoconeiscolimit--865cd51475b48cc373a943c1",
  "source": {
    "blob": "aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 334,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:865cd51475b48cc373a943c1e6b009bd74ab9f7287fa92910c4794191064f4e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:302c597c4340ab75b860e807996e76e35f726c93ff8275dd1a0b328a16807c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCoconeIsColimit (F : J ⥤ TypeMax.{v, u}) : IsColimit (colimitCocone.{v, u} F) where
  desc s :=
    Quot.lift (fun p : Σj, F.obj j => s.ι.app p.1 p.2) fun ⟨j, x⟩ ⟨j', x'⟩ ⟨f, hf⟩ => by
      dsimp at hf
      rw [hf]
      exact (congr_fun (Cocone.w s f) x).symm
  uniq s m hm := by
    funext x
    induction' x using Quot.ind with x
    exact congr_fun (hm x.1) x.2
#align category_theory.limits.types.colimit_cocone_is_colimit CategoryTheory.Limits.Types.colimitCoconeIsColimit

/-- The category of types has all colimits.

See <https://stacks.math.columbia.edu/tag/002U>.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
