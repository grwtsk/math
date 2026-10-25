# ComparatorOp.toExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:311a3644dca44eb51a9e19c96bb1a57db5d5c3306d2b50064ff2e8e62c5166dc",
  "kind": "def",
  "lexical_name": "ComparatorOp.toExpr",
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
  "slug": "comparatorop-toexpr--3886b739d3e46a773ad8891c",
  "source": {
    "blob": "72b89682c66578f3be34ec9e71b66a617880c41a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VerLit/Variant43cf6d674cfed9643bdbea3a26402a72bfd03d8f256c5743d71e8d1d324f7023.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3886b739d3e46a773ad8891caae5510aaf194fdb0d0753f1a00244c0cf40e90f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VerLit/Variant43cf6d674cfed9643bdbea3a26402a72bfd03d8f256c5743d71e8d1d324f7023.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:311a3644dca44eb51a9e19c96bb1a57db5d5c3306d2b50064ff2e8e62c5166dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def ComparatorOp.toExpr (self : ComparatorOp) : Expr :=
  match self with
  | .lt => mkConst ``ComparatorOp.lt
  | .le => mkConst ``ComparatorOp.le
  | .gt => mkConst ``ComparatorOp.gt
  | .ge => mkConst ``ComparatorOp.ge
  | .eq => mkConst ``ComparatorOp.eq
  | .ne => mkConst ``ComparatorOp.ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VerLit/Variant43cf6d674cfed9643bdbea3a26402a72bfd03d8f256c5743d71e8d1d324f7023.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VerLit/Variant43cf6d674cfed9643bdbea3a26402a72bfd03d8f256c5743d71e8d1d324f7023.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b89682c66578f3be34ec9e71b66a617880c41a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
