# provePositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b253fe136e1fe4f4a115a4fcc9b879867c4da4741c6a59907fd59dfec8586b61",
  "kind": "def",
  "lexical_name": "provePositive",
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
  "slug": "provepositive--f61e9f4b9bf4d57b25939637",
  "source": {
    "blob": "300a23b43daae2462c2b443e9d631d4062c3f2b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchMotive/Variant9a4ef281acaf0f8872b8d6391b49a14af62c0f8c89bf65d271e7a81a73b8639e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f61e9f4b9bf4d57b25939637be6ce3a889edfb4f51466d7953919e93873911d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchMotive/Variant9a4ef281acaf0f8872b8d6391b49a14af62c0f8c89bf65d271e7a81a73b8639e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b253fe136e1fe4f4a115a4fcc9b879867c4da4741c6a59907fd59dfec8586b61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def provePositive (n : Q(Nat)) : MetaM Q(0 < $n) :=
  showTerm match n with
    | ~q($m + 1) => pure q(Nat.lt_of_le_of_lt (Nat.zero_le _) (Nat.lt_succ_self _))
    | ~q(1 + $m) => pure q(by
        show 0 < 1 + $m
        rw [Nat.add_comm]
        exact Nat.lt_of_le_of_lt (Nat.zero_le _) (Nat.lt_succ_self _))
    | _ => throwError "cannot prove positive: {n}"

/--
info: (((((Expr.const `Nat.lt_of_le_of_lt []).app
                  ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app
                        (Expr.lit (Literal.natVal 0))).app
                    ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 0))))).app
              ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app
                    (Expr.lit (Literal.natVal 41))).app
                ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 41))))).app
          ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app (Expr.lit (Literal.natVal 42))).app
            ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 42))))).app
      ((Expr.const `Nat.zero_le []).app
        ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app (Expr.lit (Literal.natVal 41))).app
          ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 41)))))).app
  ((Expr.const `Nat.lt_succ_self []).app
    ((((Expr.const `OfNat.ofNat [Level.zero]).app (Expr.const `Nat [])).app (Expr.lit (Literal.natVal 41))).app
      ((Expr.const `instOfNatNat []).app (Expr.lit (Literal.natVal 41)))))
-/
#guard_msgs in
#eval provePositive q(42) >>= fun proof => pure proof <* proof.check
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchMotive/Variant9a4ef281acaf0f8872b8d6391b49a14af62c0f8c89bf65d271e7a81a73b8639e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchMotive/Variant9a4ef281acaf0f8872b8d6391b49a14af62c0f8c89bf65d271e7a81a73b8639e.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `300a23b43daae2462c2b443e9d631d4062c3f2b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
