# union_right_hit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae010739-5dce-b622-31e9-fe4a98f9c2c4",
  "kind": "theorem",
  "lexical_name": "union_right_hit",
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
  "slug": "union-right-hit--758aa4dc2523121e123f498a",
  "source": {
    "blob": "080545f485bd6f356ed655974b18733359d13535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1445,
    "line": 1436,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758aa4dc2523121e123f498a342c29ef46fd7f54bf676d263087088490ae28cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae010739-5dce-b622-31e9-fe4a98f9c2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1436–1445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_right_hit {y z : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data) :
    Proves P Γ γ (B.ev (B.unionPred L.code KY.code KP.code y z) z) := by
  apply (H.union_evaluation KY KP hy my hz mz hz mz).2.prove
  have haa := H.relation_formula KY KP hz mz hy my
  have hab := H.relation_formula KY KP hz mz hz mz
  have hrefl := H.relation_refl KY KP hz mz
  pts_pl L using [hrefl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean#L1436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080545f485bd6f356ed655974b18733359d13535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
