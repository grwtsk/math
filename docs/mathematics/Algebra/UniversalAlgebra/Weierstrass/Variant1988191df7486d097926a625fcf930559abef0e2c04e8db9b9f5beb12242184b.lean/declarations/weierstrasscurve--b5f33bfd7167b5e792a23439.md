# WeierstrassCurve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72719b89cdf749b6d797caa8d4fbd23b9e2be0388f27497a25f5ea531abb0e5b",
  "kind": "structure",
  "lexical_name": "WeierstrassCurve",
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
  "slug": "weierstrasscurve--b5f33bfd7167b5e792a23439",
  "source": {
    "blob": "5ef9316e466dfc60347c91f8110fe2a8eef28e5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant1988191df7486d097926a625fcf930559abef0e2c04e8db9b9f5beb12242184b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5f33bfd7167b5e792a23439c8ca5871c8c1805d8fa489ae2c17e511941c58eb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Weierstrass/Variant1988191df7486d097926a625fcf930559abef0e2c04e8db9b9f5beb12242184b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72719b89cdf749b6d797caa8d4fbd23b9e2be0388f27497a25f5ea531abb0e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeierstrassCurve (R : Type u) where
  /-- The `a₁` coefficient of a Weierstrass curve. -/
  a₁ : R
  /-- The `a₂` coefficient of a Weierstrass curve. -/
  a₂ : R
  /-- The `a₃` coefficient of a Weierstrass curve. -/
  a₃ : R
  /-- The `a₄` coefficient of a Weierstrass curve. -/
  a₄ : R
  /-- The `a₆` coefficient of a Weierstrass curve. -/
  a₆ : R

namespace WeierstrassCurve

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Weierstrass/Variant1988191df7486d097926a625fcf930559abef0e2c04e8db9b9f5beb12242184b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant1988191df7486d097926a625fcf930559abef0e2c04e8db9b9f5beb12242184b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef9316e466dfc60347c91f8110fe2a8eef28e5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
