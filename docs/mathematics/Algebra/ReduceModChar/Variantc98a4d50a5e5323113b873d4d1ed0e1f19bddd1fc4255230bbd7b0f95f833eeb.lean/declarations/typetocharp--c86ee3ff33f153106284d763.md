# typeToCharP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5766606e9e36475eabc7c558a42afbf8ea65d16b3ce8d878e3a017652a06e9a3",
  "kind": "def",
  "lexical_name": "typeToCharP",
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
  "slug": "typetocharp--c86ee3ff33f153106284d763",
  "source": {
    "blob": "94bbc328731b374328bade0b1a821cf2c6bcc540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 179,
    "path": "GRWTSK/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c86ee3ff33f153106284d76390565194b7b8fe4e7f0cc62855da07744467ba03",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5766606e9e36475eabc7c558a42afbf8ea65d16b3ce8d878e3a017652a06e9a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def typeToCharP (expensive := false) (t : Q(Type u)) : MetaM (TypeToCharPResult t) :=
match Expr.getAppFnArgs t with
| (``ZMod, #[(n : Q(ℕ))]) =>
  return .intLike n
    (q((ZMod.commRing _).toRing) : Q(Ring (ZMod $n)))
    (q(ZMod.charP _) : Q(CharP (ZMod $n) $n))
| (``Polynomial, #[(R : Q(Type u)), _]) => do match ← typeToCharP (expensive := expensive) R with
  | (.intLike n _ _) =>
    return .intLike n
      (q(Polynomial.ring) : Q(Ring (Polynomial $R)))
      (q(Polynomial.instCharP _) : Q(CharP (Polynomial $R) $n))
  | .failure => return .failure
| _ => if ! expensive then return .failure else do
  -- Fallback: run an expensive procedures to determine a characteristic,
  -- by looking for a `CharP` instance.
  withNewMCtxDepth do
    /- If we want to support semirings, here we could implement the `natLike` fallback. -/
    let .some instRing ← trySynthInstanceQ q(Ring $t) | return .failure

    let n ← mkFreshExprMVarQ q(ℕ)
    let some instCharP ← findLocalDeclWithTypeQ? q(CharP $t $n) | return .failure

    return .intLike (← instantiateMVarsQ n) instRing instCharP

/-- Given an expression `e`, determine whether it is a numeric expression in characteristic `n`,
and if so, reduce `e` modulo `n`.

This is not a `norm_num` plugin because it does not match on the syntax of `e`,
rather it matches on the type of `e`.

Use `matchAndNorm (expensive := true)` to do more work in finding the characteristic of
the type of `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variantc98a4d50a5e5323113b873d4d1ed0e1f19bddd1fc4255230bbd7b0f95f833eeb.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94bbc328731b374328bade0b1a821cf2c6bcc540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
