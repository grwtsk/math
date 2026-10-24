# le_maxIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67ab68ad-2d52-5a3d-3211-7bd170b0ce51",
  "kind": "theorem",
  "lexical_name": "le_maxIdeal",
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
  "slug": "le-maxideal--a1cb4f74039b5e757558f5e3",
  "source": {
    "blob": "cc7b96bb8d7b6be77ae4e9e5d9d82af70e1e6736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 115,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1cb4f74039b5e757558f5e300cbc81f3e18417407fc71ba0691821335ee3deb",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ab68ad-2d52-5a3d-3211-7bd170b0ce51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_maxIdeal : spanEval k ≤ maxIdeal k :=
  (Classical.choose_spec <| Ideal.exists_le_maximal _ <| spanEval_ne_top k).2
#align algebraic_closure.le_max_ideal AlgebraicClosure.le_maxIdeal

/-- The first step of constructing `AlgebraicClosure`: adjoin a root of all monic polynomials -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc7b96bb8d7b6be77ae4e9e5d9d82af70e1e6736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
