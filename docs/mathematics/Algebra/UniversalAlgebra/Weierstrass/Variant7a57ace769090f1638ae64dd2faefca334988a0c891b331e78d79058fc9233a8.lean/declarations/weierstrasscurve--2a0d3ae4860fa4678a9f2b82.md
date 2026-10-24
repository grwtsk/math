# WeierstrassCurve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b47f1029aac0935512014236615764e8b367963813cec2c0fc309c045f03e35",
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
  "slug": "weierstrasscurve--2a0d3ae4860fa4678a9f2b82",
  "source": {
    "blob": "40299235e00e4015714277ec1638f05fd967a73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a0d3ae4860fa4678a9f2b82ab2154e6f930324609a5ebdb0f29f4faf3d5935b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b47f1029aac0935512014236615764e8b367963813cec2c0fc309c045f03e35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40299235e00e4015714277ec1638f05fd967a73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
