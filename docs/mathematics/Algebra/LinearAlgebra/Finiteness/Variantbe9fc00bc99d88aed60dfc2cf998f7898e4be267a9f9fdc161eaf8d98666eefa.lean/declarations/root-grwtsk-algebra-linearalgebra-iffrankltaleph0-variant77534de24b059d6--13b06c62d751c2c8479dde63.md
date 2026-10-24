# _root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.Module.natCard_eq_pow_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f79e86bb-e270-e799-ba80-6658e4088f17",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.Module.natCard_eq_pow_finrank",
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
  "slug": "root-grwtsk-algebra-linearalgebra-iffrankltaleph0-variant77534de24b059d6--13b06c62d751c2c8479dde63",
  "source": {
    "blob": "3c683bf4884ab301c257e353b58f4deb761a4728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13b06c62d751c2c8479dde6386393afcff8295908d25ed48433c0b8b98210df0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f79e86bb-e270-e799-ba80-6658e4088f17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant77534de24b059d6b88ca123dd771455ea42c8d4441a21a36dcad1e036dddb665.Module.natCard_eq_pow_finrank [Module.Finite K V] :
    Nat.card V = Nat.card K ^ finrank K V := by
  let b := IsNoetherian.finsetBasis K V
  rw [Nat.card_congr b.equivFun.toEquiv, Nat.card_fun, finrank_eq_nat_card_basis b]

/-- A module over a division ring is noetherian if and only if it is finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c683bf4884ab301c257e353b58f4deb761a4728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
