# ExprCnstr.denote_toNormPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d47f73e7-8bb7-c34b-9f44-42da5b8b84e8",
  "kind": "theorem",
  "lexical_name": "ExprCnstr.denote_toNormPoly",
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
  "slug": "exprcnstr-denote-tonormpoly--9a06322c9b0cf34ebf9c1327",
  "source": {
    "blob": "ace6b1433d5bcec1e84132c9aace3c3c7302b892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 488,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a06322c9b0cf34ebf9c1327b64317545b8e5496a407a1d2366ae983196e3731",
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

Occurrence: `result:d47f73e7-8bb7-c34b-9f44-42da5b8b84e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExprCnstr.denote_toNormPoly (ctx : Context) (c : ExprCnstr) : c.toNormPoly.denote ctx = c.denote ctx := by
  cases c; rename_i eq lhs rhs
  simp [ExprCnstr.denote, PolyCnstr.denote, ExprCnstr.toNormPoly]
  by_cases h : eq = true <;> simp [h]
  · rw [Poly.denote_eq_cancel_eq]; simp [Poly.denote_eq, Expr.toNormPoly, Poly.norm]
  · rw [Poly.denote_le_cancel_eq]; simp [Poly.denote_le, Expr.toNormPoly, Poly.norm]

attribute [local simp] ExprCnstr.denote_toNormPoly

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant756cf26e2d33f3fc922f22e8173dfcb25bdcf5e8676b5539c3cbe54ef2ab0973.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace6b1433d5bcec1e84132c9aace3c3c7302b892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
