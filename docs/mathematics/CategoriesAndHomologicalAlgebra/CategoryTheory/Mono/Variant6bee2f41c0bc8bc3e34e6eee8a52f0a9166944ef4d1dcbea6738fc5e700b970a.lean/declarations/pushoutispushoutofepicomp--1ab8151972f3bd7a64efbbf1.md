# pushoutIsPushoutOfEpiComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ce71c8b5b4333a42fd65e8864acec42d3f9bb4836bd8dce1866060757c7ab77",
  "kind": "def",
  "lexical_name": "pushoutIsPushoutOfEpiComp",
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
  "slug": "pushoutispushoutofepicomp--1ab8151972f3bd7a64efbbf1",
  "source": {
    "blob": "7ae2ce57e799631114339634673766eacfaeff15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 330,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ab8151972f3bd7a64efbbf1ea9a2c5b143b2467e1c80e81484138ecc27ddbd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ce71c8b5b4333a42fd65e8864acec42d3f9bb4836bd8dce1866060757c7ab77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pushoutIsPushoutOfEpiComp (f : X ⟶ Y) (g : X ⟶ Z) (h : W ⟶ X) [Epi h]
    [HasPushout f g] : IsColimit (PushoutCocone.mk (pushout.inl f g) (pushout.inr f g)
    (show (h ≫ f) ≫ pushout.inl f g = (h ≫ g) ≫ pushout.inr f g by
    simp only [Category.assoc]; rw [cancel_epi]; exact pushout.condition)) :=
  PushoutCocone.isColimitOfEpiComp f g h _ (colimit.isColimit (span f g))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant6bee2f41c0bc8bc3e34e6eee8a52f0a9166944ef4d1dcbea6738fc5e700b970a.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae2ce57e799631114339634673766eacfaeff15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
