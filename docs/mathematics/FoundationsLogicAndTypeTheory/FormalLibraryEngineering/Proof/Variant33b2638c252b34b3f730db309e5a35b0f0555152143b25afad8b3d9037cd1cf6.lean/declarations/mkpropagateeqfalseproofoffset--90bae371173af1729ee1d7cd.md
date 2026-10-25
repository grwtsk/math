# mkPropagateEqFalseProofOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fa31fc90e42f3c93c3a9a28c6377c9fafccd4f380a31795ca84415e4431b2dc",
  "kind": "def",
  "lexical_name": "mkPropagateEqFalseProofOffset",
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
  "slug": "mkpropagateeqfalseproofoffset--90bae371173af1729ee1d7cd",
  "source": {
    "blob": "ac07915ce268e22268366fb3a895f376aa2244eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90bae371173af1729ee1d7cdd181dca91248928d5ddf15a26622ed4dc3ff2146",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fa31fc90e42f3c93c3a9a28c6377c9fafccd4f380a31795ca84415e4431b2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkPropagateEqFalseProofOffset (u v : Expr) (k : Weight) (huv : Expr) (k' : Weight) : OrderM Expr := do
  let declName := match k'.strict, k.strict with
    | false, false => ``Grind.Order.le_eq_false_of_le_k
    | false, true  => ``Grind.Order.le_eq_false_of_lt_k
    | true,  false => ``Grind.Order.lt_eq_false_of_le_k
    | true,  true  => ``Grind.Order.lt_eq_false_of_lt_k
  let h ← mkOrdRingPrefix declName
  return mkApp6 h u v (toExpr k.k) (toExpr k'.k) eagerReflBoolTrue huv

/--
Given a path `u --(k)--> v` justified by proof `huv`,
construct a proof of `e = False` where `e` is a term corresponding to the edge `u --(k') --> v`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant33b2638c252b34b3f730db309e5a35b0f0555152143b25afad8b3d9037cd1cf6.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac07915ce268e22268366fb3a895f376aa2244eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
