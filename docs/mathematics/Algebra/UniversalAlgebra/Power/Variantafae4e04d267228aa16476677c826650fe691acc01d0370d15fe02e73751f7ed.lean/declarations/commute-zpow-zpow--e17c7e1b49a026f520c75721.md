# Commute.zpow_zpow₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47682962-d16b-d1bd-d9c1-43b56957a5c0",
  "kind": "theorem",
  "lexical_name": "Commute.zpow_zpow₀",
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
  "slug": "commute-zpow-zpow--e17c7e1b49a026f520c75721",
  "source": {
    "blob": "4c8fe2a3e8b1742e43d2c950372c7fc62fcad47d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 136,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e17c7e1b49a026f520c75721592e1a0945a0a056de66c4b36dc6ff2994b2d2c6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47682962-d16b-d1bd-d9c1-43b56957a5c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Commute.zpow_zpow₀ {a b : G₀} (h : Commute a b) (m n : ℤ) : Commute (a ^ m) (b ^ n) :=
  (h.zpow_left₀ m).zpow_right₀ n
#align commute.zpow_zpow₀ Commute.zpow_zpow₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8fe2a3e8b1742e43d2c950372c7fc62fcad47d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
