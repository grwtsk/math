# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0416963f0d1acb558e5fb7f602590f27102e5df3690ff0d6ee45655981b6598",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5bd04c2ce2908e89ba0dde60",
  "source": {
    "blob": "5c5b6037ddd92f55b403b27485e971acda2b900c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 154,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bd04c2ce2908e89ba0dde606465d83cc7d7178b917a5c529bb70ed8cd25e625",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0416963f0d1acb558e5fb7f602590f27102e5df3690ff0d6ee45655981b6598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Repr Pos where
  reprPrec p _ := f!"Pos.fromString! {repr p.toString}"


-- Note: we can't send the bare Nat over the wire because Json will convert to float
-- if the nat is too big and least significant bits will be lost.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5b6037ddd92f55b403b27485e971acda2b900c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
