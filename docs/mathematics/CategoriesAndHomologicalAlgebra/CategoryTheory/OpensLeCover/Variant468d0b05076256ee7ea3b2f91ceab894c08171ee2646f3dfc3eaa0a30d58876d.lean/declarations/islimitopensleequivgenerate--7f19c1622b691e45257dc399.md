# isLimitOpensLeEquivGenerate₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ed44fa675ba3c99e5de5e5f8384a7da89ee5b064d429c2be3cb3b6f5bbeaa50",
  "kind": "def",
  "lexical_name": "isLimitOpensLeEquivGenerate₂",
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
  "slug": "islimitopensleequivgenerate--7f19c1622b691e45257dc399",
  "source": {
    "blob": "459205ec8eae56c93f84743db0f6fa6bb4ede1af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f19c1622b691e45257dc399d41975337ce4486eecc19e1ad1144e0886bd8075",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ed44fa675ba3c99e5de5e5f8384a7da89ee5b064d429c2be3cb3b6f5bbeaa50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOpensLeEquivGenerate₂ (R : Presieve Y)
    (hR : Sieve.generate R ∈ Opens.grothendieckTopology X Y) :
    IsLimit (F.mapCone (opensLeCoverCocone (coveringOfPresieve Y R)).op) ≃
      IsLimit (F.mapCone (Sieve.generate R).arrows.cocone.op) := by
  convert isLimitOpensLeEquivGenerate₁ F (coveringOfPresieve Y R)
      (coveringOfPresieve.iSup_eq_of_mem_grothendieck Y R hR).symm using 1
  rw [covering_presieve_eq_self R]

variable {F} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459205ec8eae56c93f84743db0f6fa6bb4ede1af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
