# toLinearCnstr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e5dec29d09b2c3c20c045345dfcbb332f289372358fee3327567c97238957f9",
  "kind": "def",
  "lexical_name": "toLinearCnstr?",
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
  "slug": "tolinearcnstr--fc2317a1ec27b5d34f0561ae",
  "source": {
    "blob": "a7d36b08e59f503a22716ba632c7d4dad6d4ba2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc2317a1ec27b5d34f0561aebb22063fea02c5bb5f566596ee73635a69058263",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e5dec29d09b2c3c20c045345dfcbb332f289372358fee3327567c97238957f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toLinearCnstr? (e : Expr) : M (Option LinearCnstr) := OptionT.run do
  match_expr e with
  | Eq α a b =>
    let_expr Nat ← α | failure
    return { eq := true, lhs := (← toLinearExpr a), rhs := (← toLinearExpr b) }
  | Nat.le a b =>
    return { eq := false, lhs := (← toLinearExpr a), rhs := (← toLinearExpr b) }
  | Nat.lt a b =>
    return { eq := false, lhs := (← toLinearExpr a).inc, rhs := (← toLinearExpr b) }
  | LE.le _ i a b =>
    guard (← DefEq.isInstLENat i)
    return { eq := false, lhs := (← toLinearExpr a), rhs := (← toLinearExpr b) }
  | LT.lt _ i a b =>
    guard (← DefEq.isInstLTNat i)
    return { eq := false, lhs := (← toLinearExpr a).inc, rhs := (← toLinearExpr b) }
  | GE.ge _ i a b =>
    guard (← DefEq.isInstLENat i)
    return { eq := false, lhs := (← toLinearExpr b), rhs := (← toLinearExpr a) }
  | GT.gt _ i a b =>
    guard (← DefEq.isInstLTNat i)
    return { eq := false, lhs := (← toLinearExpr b).inc, rhs := (← toLinearExpr a) }
  | _ => failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d36b08e59f503a22716ba632c7d4dad6d4ba2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
