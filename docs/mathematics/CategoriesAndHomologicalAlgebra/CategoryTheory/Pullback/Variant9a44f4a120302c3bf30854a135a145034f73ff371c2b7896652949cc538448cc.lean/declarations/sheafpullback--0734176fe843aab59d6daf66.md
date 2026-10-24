# sheafPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24f1e4766d3df97e40ef25946e95124f1b3a96e6de5812417d4cfac054483d72",
  "kind": "def",
  "lexical_name": "sheafPullback",
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
  "slug": "sheafpullback--0734176fe843aab59d6daf66",
  "source": {
    "blob": "2466b158c6cb3260fdcd2f9c6df630c14d0115cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0734176fe843aab59d6daf664499255165a3cce4b90bdbf5cdb8f7e45d363c3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24f1e4766d3df97e40ef25946e95124f1b3a96e6de5812417d4cfac054483d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafPullback [HasWeakSheafify K A] : Sheaf J A ⥤ Sheaf K A :=
  sheafToPresheaf J A ⋙ G.op.lan ⋙ presheafToSheaf K A

/-- The constructed `sheafPullback G A J K` is left adjoint
to `G.sheafPushforwardContinuous A J K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2466b158c6cb3260fdcd2f9c6df630c14d0115cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
