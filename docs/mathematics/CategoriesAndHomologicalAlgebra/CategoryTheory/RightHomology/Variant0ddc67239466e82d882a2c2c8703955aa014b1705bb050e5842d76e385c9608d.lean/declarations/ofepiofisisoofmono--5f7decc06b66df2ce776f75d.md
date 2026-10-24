# ofEpiOfIsIsoOfMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbdf650613b4060af0c9ad56d6c4b0022389ac0d317fb36bc139d79d75060e39",
  "kind": "def",
  "lexical_name": "ofEpiOfIsIsoOfMono",
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
  "slug": "ofepiofisisoofmono--5f7decc06b66df2ce776f75d",
  "source": {
    "blob": "0189cfb6236cfa1f436490338f4297f7d6cd5bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1079,
    "line": 1074,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f7decc06b66df2ce776f75d02937eddb843520dd61634f879ab07053a2f7526",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbdf650613b4060af0c9ad56d6c4b0022389ac0d317fb36bc139d79d75060e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1074–1079.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofEpiOfIsIsoOfMono : RightHomologyData S₂ := by
  haveI : Epi (opMap φ).τ₁ := by dsimp; infer_instance
  haveI : IsIso (opMap φ).τ₂ := by dsimp; infer_instance
  haveI : Mono (opMap φ).τ₃ := by dsimp; infer_instance
  exact (LeftHomologyData.ofEpiOfIsIsoOfMono' (opMap φ) h.op).unop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean#L1074).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0189cfb6236cfa1f436490338f4297f7d6cd5bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
