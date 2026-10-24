# mkNatCastFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10a1d0cc9d3a098ac13865a158a9238b912afaaff4f3423e759727a82a45ce0a",
  "kind": "def",
  "lexical_name": "mkNatCastFn",
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
  "slug": "mknatcastfn--601a98b8cb2b17b141d0368c",
  "source": {
    "blob": "441560896bea710f3b4bf7cd5e8b78634cf1516e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:601a98b8cb2b17b141d0368cf36bd9b4f2aa8b17b3249f82e510685d928d91f1",
  "verification": {
    "reference": "docs/verification/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10a1d0cc9d3a098ac13865a158a9238b912afaaff4f3423e759727a82a45ce0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNatCastFn (u : Level) (type : Expr) (semiringInst : Expr) : m Expr := do
  let inst' := mkApp2 (mkConst ``Grind.Semiring.natCast [u]) type semiringInst
  let instType := mkApp (mkConst ``NatCast [u]) type
  -- Note that `Semiring.natCast` is not registered as a global instance
  -- (to avoid introducing unwanted coercions)
  -- so merely having a `Semiring α` instance
  -- does not guarantee that an `NatCast α` will be available.
  -- When both are present we verify that they are defeq,
  -- and otherwise fall back to the field of the `Semiring α` instance that we already have.
  let inst ← match (← MonadCanon.synthInstance? instType) with
  | none => pure inst'
  | some inst => checkInst ``NatCast.natCast inst inst'; pure inst
  canonExpr <| mkApp2 (mkConst ``NatCast.natCast [u]) type inst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Functions/Variant603917bbfe5679f7c81f07e3f5cb5c3a4be51e721eb522c3a7ca40ead41599a0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `441560896bea710f3b4bf7cd5e8b78634cf1516e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
