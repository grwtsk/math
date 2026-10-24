# getIntCastFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed2dde61c8bb5097ae36e3a4af9b051c6fb3dcbb9bc0a8435285214c01fa6694",
  "kind": "def",
  "lexical_name": "getIntCastFn",
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
  "slug": "getintcastfn--342cdef9e47ec7c16b1a34f3",
  "source": {
    "blob": "e373c2350cd541ddbb7fa7c01b7d12d18e4a5658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/Algebra/Functions/Variant2bd4e8ea3c33a66cc3306e18005edf9066ed4d497f7c861c0619009861dbd5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:342cdef9e47ec7c16b1a34f3cb1da34e6eed13ee68403a45f168207cf5dc158f",
  "verification": {
    "reference": "docs/verification/Algebra/Functions/Variant2bd4e8ea3c33a66cc3306e18005edf9066ed4d497f7c861c0619009861dbd5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed2dde61c8bb5097ae36e3a4af9b051c6fb3dcbb9bc0a8435285214c01fa6694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getIntCastFn : m Expr := do
  let ring ← getRing
  if let some intCastFn := ring.intCastFn? then return intCastFn
  let inst' := mkApp2 (mkConst ``Grind.Ring.intCast [ring.u]) ring.type ring.ringInst
  let instType := mkApp (mkConst ``IntCast [ring.u]) ring.type
  -- Note that `Ring.intCast` is not registered as a global instance
  -- (to avoid introducing unwanted coercions)
  -- so merely having a `Ring α` instance
  -- does not guarantee that an `IntCast α` will be available.
  -- When both are present we verify that they are defeq,
  -- and otherwise fall back to the field of the `Ring α` instance that we already have.
  let inst ← match (← MonadCanon.synthInstance? instType) with
    | none => pure inst'
    | some inst => checkInst ``Int.cast inst inst'; pure inst
  let intCastFn ← canonExpr <| mkApp2 (mkConst ``IntCast.intCast [ring.u]) ring.type inst
  modifyRing fun s => { s with intCastFn? := some intCastFn }
  return intCastFn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Functions/Variant2bd4e8ea3c33a66cc3306e18005edf9066ed4d497f7c861c0619009861dbd5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Functions/Variant2bd4e8ea3c33a66cc3306e18005edf9066ed4d497f7c861c0619009861dbd5f9.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e373c2350cd541ddbb7fa7c01b7d12d18e4a5658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
