# reduceNat?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d93b3d079ad6d9efacb88b76663fea1c2f40fc1066fdcd9ca5e5b0df0f801ff5",
  "kind": "def",
  "lexical_name": "reduceNat?",
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
  "slug": "reducenat--d1006f88a43b64810efbd230",
  "source": {
    "blob": "f31a765ed75b6fbe3ae881a93afdf3152f18a53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1081,
    "line": 1054,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1006f88a43b64810efbd23081850266fd93eccd5ad8ca442e72d10abcef2298",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d93b3d079ad6d9efacb88b76663fea1c2f40fc1066fdcd9ca5e5b0df0f801ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1054–1081.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceNat? (e : Expr) : MetaM (Option Expr) :=
  match e with
  | .app (.const fn _) a =>
    if fn == ``Nat.succ then
      reduceUnaryNatOp Nat.succ a
    else
      return none
  | .app (.app (.const fn _) a1) a2 =>
    match fn with
    | ``Nat.add => reduceBinNatOp Nat.add a1 a2
    | ``Nat.sub => reduceBinNatOp Nat.sub a1 a2
    | ``Nat.mul => reduceBinNatOp Nat.mul a1 a2
    | ``Nat.div => reduceBinNatOp Nat.div a1 a2
    | ``Nat.mod => reduceBinNatOp Nat.mod a1 a2
    | ``Nat.pow => reducePow a1 a2
    | ``Nat.gcd => reduceBinNatOp Nat.gcd a1 a2
    | ``Nat.beq => reduceBinNatPred Nat.beq a1 a2
    | ``Nat.ble => reduceBinNatPred Nat.ble a1 a2
    | ``Nat.land => reduceBinNatOp Nat.land a1 a2
    | ``Nat.lor  => reduceBinNatOp Nat.lor a1 a2
    | ``Nat.xor  => reduceBinNatOp Nat.xor a1 a2
    | ``Nat.shiftLeft  => reduceBinNatOp Nat.shiftLeft a1 a2
    | ``Nat.shiftRight => reduceBinNatOp Nat.shiftRight a1 a2
    | _ => return none
  | _ =>
    return none


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean#L1054).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31a765ed75b6fbe3ae881a93afdf3152f18a53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
