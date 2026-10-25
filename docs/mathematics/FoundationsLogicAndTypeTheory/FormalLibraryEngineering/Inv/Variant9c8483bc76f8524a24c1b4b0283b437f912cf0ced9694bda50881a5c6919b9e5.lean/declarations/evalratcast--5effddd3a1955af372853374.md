# evalRatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe51251e9b81804d499894f203eac48f9445e7155cd51d7a44503216274e7c3b",
  "kind": "def",
  "lexical_name": "evalRatCast",
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
  "slug": "evalratcast--5effddd3a1955af372853374",
  "source": {
    "blob": "9df32422d8e5cac17c8397d87a432ca7391034db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5effddd3a1955af3728533745f8d7452ffe33b2491f046d07ac70260041bab5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe51251e9b81804d499894f203eac48f9445e7155cd51d7a44503216274e7c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num Rat.cast _, RatCast.ratCast _] def evalRatCast : NormNumExt where eval {u α} e := do
  let dα ← inferDivisionRing α
  let .app r (a : Q(ℚ)) ← whnfR e | failure
  guard <|← withNewMCtxDepth <| isDefEq r q(Rat.cast (K := $α))
  let r ← derive q($a)
  haveI' : $e =Q Rat.cast $a := ⟨⟩
  match r with
  | .isNat _ na pa =>
    assumeInstancesCommute
    return .isNat _ na q(isNat_ratCast $pa)
  | .isNegNat _ na pa =>
    assumeInstancesCommute
    return .isNegNat _ na q(isInt_ratCast $pa)
  | .isRat _ qa na da pa =>
    assumeInstancesCommute
    let i ← inferCharZeroOfDivisionRing dα
    return .isRat dα qa na da q(isRat_ratCast $pa)
  | _ => failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant9c8483bc76f8524a24c1b4b0283b437f912cf0ced9694bda50881a5c6919b9e5.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df32422d8e5cac17c8397d87a432ca7391034db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
