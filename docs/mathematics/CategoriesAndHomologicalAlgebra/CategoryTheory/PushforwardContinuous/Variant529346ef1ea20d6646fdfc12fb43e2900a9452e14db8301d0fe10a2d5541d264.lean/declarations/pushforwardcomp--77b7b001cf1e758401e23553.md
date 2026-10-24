# pushforwardComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ee2de7a8d9ac5917069255c0b2739fb3c81b2070ff22bef52d2773492e39307",
  "kind": "def",
  "lexical_name": "pushforwardComp",
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
  "slug": "pushforwardcomp--77b7b001cf1e758401e23553",
  "source": {
    "blob": "c35bb50886d2b18cb4e55c13084b0151d71b633f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77b7b001cf1e758401e23553412aa264175189dee8a8aee41abe065c3608d27f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ee2de7a8d9ac5917069255c0b2739fb3c81b2070ff22bef52d2773492e39307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pushforwardComp :
    haveI : Functor.IsContinuous (F ⋙ G) J K' := Functor.isContinuous_comp _ _ _ K _
    pushforward.{v} ψ ⋙ pushforward.{v} φ ≅
      pushforward.{v} (F := F ⋙ G) (φ ≫ (F.sheafPushforwardContinuous RingCat.{u} J K).map ψ) :=
  Iso.refl _

-- Not a simp because the type of the LHS is dsimp-able
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant529346ef1ea20d6646fdfc12fb43e2900a9452e14db8301d0fe10a2d5541d264.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c35bb50886d2b18cb4e55c13084b0151d71b633f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
