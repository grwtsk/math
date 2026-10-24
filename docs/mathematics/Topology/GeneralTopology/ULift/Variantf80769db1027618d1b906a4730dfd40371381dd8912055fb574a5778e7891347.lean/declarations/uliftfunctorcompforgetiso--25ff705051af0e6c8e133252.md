# uliftFunctorCompForgetIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fe8e479bb953c751b95f3864a8e71180b9f4529aa8dbd7bc7a3bec2c59d8dca",
  "kind": "def",
  "lexical_name": "uliftFunctorCompForgetIso",
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
  "slug": "uliftfunctorcompforgetiso--25ff705051af0e6c8e133252",
  "source": {
    "blob": "0953094043fd99fd7be1a6bf08581332b16c3e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25ff705051af0e6c8e13325200c8c95a6c6d83d436d04942a0e1f4524f43998f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fe8e479bb953c751b95f3864a8e71180b9f4529aa8dbd7bc7a3bec2c59d8dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftFunctorCompForgetIso : uliftFunctor.{v, u} ⋙ forget TopCat.{max u v} ≅
  forget TopCat.{u} ⋙ CategoryTheory.uliftFunctor.{v, u} := Iso.refl _

/-- The `ULift` functor on categories of topological spaces is fully faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ULift/Variantf80769db1027618d1b906a4730dfd40371381dd8912055fb574a5778e7891347.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0953094043fd99fd7be1a6bf08581332b16c3e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
