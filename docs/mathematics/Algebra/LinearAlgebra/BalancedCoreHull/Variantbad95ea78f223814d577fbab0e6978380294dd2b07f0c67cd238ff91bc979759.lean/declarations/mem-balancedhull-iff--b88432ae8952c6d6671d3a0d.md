# mem_balancedHull_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10126c8f-57b2-881e-edf6-35e37ef8fdec",
  "kind": "theorem",
  "lexical_name": "mem_balancedHull_iff",
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
  "slug": "mem-balancedhull-iff--b88432ae8952c6d6671d3a0d",
  "source": {
    "blob": "4db886eff2ee725b7de73d623bbec457fd9c3338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b88432ae8952c6d6671d3a0d4e67528ea676c80bb8b636d2034d1b117dcbb222",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10126c8f-57b2-881e-edf6-35e37ef8fdec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_balancedHull_iff : x ∈ balancedHull 𝕜 s ↔ ∃ (r : 𝕜) (_ : ‖r‖ ≤ 1), x ∈ r • s :=
  mem_iUnion₂
#align mem_balanced_hull_iff mem_balancedHull_iff

/-- The balanced hull of `s` is minimal in the sense that it is contained in any balanced superset
`t` of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4db886eff2ee725b7de73d623bbec457fd9c3338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
