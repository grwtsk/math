# Data

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a85ba92c3d4731d22ee83bcce7566ae487801d33b6193e40043916cf1773a10",
  "kind": "structure",
  "lexical_name": "Data",
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
  "slug": "data--8c0f7d1dfb9e0cccb5725655",
  "source": {
    "blob": "0e2c36883bde8f8157af3ee24b9417797959e744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/GeometryOfNumbers/PrimitiveLinearBoxCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c0f7d1dfb9e0cccb5725655d3843b2716f8329fe600f7221af287b10295f3c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a85ba92c3d4731d22ee83bcce7566ae487801d33b6193e40043916cf1773a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Data where
  a : ℕ
  b : ℕ
  c : ℕ
  X : ℕ
  Y : ℕ
  Z : ℕ
  a_pos : 0 < a
  b_pos : 0 < b
  c_pos : 0 < c
  X_pos : 0 < X
  Y_pos : 0 < Y
  Z_pos : 0 < Z
  coefficientPrimitive : Nat.gcd (Nat.gcd a b) c = 1

namespace Data

/-- The source equation `a*x+b*y=c*z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GeometryOfNumbers/PrimitiveLinearBoxCount.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e2c36883bde8f8157af3ee24b9417797959e744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
