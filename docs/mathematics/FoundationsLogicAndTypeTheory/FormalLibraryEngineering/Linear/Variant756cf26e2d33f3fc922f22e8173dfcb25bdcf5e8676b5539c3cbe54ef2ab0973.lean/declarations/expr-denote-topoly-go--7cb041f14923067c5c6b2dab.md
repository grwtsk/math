# Expr.denote_toPoly_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e048df9-5cb1-fba4-9fcc-08de8ae398aa",
  "kind": "theorem",
  "lexical_name": "Expr.denote_toPoly_go",
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
  "slug": "expr-denote-topoly-go--7cb041f14923067c5c6b2dab",
  "source": {
    "blob": "ace6b1433d5bcec1e84132c9aace3c3c7302b892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cb041f14923067c5c6b2dabd62cc792e439e2fc919a40ab6ca490e34f88b26c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e048df9-5cb1-fba4-9fcc-08de8ae398aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Expr.denote_toPoly_go (ctx : Context) (e : Expr) :
  (toPoly.go k e p).denote ctx = k * e.denote ctx + p.denote ctx := by
  induction k, e using Expr.toPoly.go.induct generalizing p with
  | case1 k k' h =>
    simp [toPoly.go, eq_of_beq h]
  | case2 k k' h =>
    simp [toPoly.go, h, Var.denote]
  | case3 k i => simp [toPoly.go]
  | case4 k a b iha ihb => simp [toPoly.go, iha, ihb]
  | case5 k k' a h => simp [toPoly.go, eq_of_beq h]
  | case6 k a k' h ih =>
    simp only [toPoly.go, denote, mul_eq]
    simp [h, cond_false, ih, Nat.mul_assoc]
  | case7 k a k' h =>
    simp only [toPoly.go, denote, mul_eq]
    simp [eq_of_beq h]
  | case8 k a k' h ih =>
    simp only [toPoly.go, denote, mul_eq]
    simp [h, cond_false, ih, Nat.mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace6b1433d5bcec1e84132c9aace3c3c7302b892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
