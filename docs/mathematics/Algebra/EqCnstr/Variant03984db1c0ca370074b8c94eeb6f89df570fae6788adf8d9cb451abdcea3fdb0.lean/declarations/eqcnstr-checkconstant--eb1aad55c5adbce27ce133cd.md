# EqCnstr.checkConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b826ccb6544e510df99b37f2d0bf8558a8ba76945d44ace2a67d49546e996aa",
  "kind": "def",
  "lexical_name": "EqCnstr.checkConstant",
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
  "slug": "eqcnstr-checkconstant--eb1aad55c5adbce27ce133cd",
  "source": {
    "blob": "3f88872c0e0fc1b6f09167e064498454595d5795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 202,
    "path": "GRWTSK/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb1aad55c5adbce27ce133cd640d178909b5bb072187a87be0b5ddfa98c9acf3",
  "verification": {
    "reference": "docs/verification/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b826ccb6544e510df99b37f2d0bf8558a8ba76945d44ace2a67d49546e996aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EqCnstr.checkConstant (c : EqCnstr) : RingM Bool := do
  let .num n := c.p | return false
  if n == 0 then
    trace_goal[grind.ring.assert.trivial] "{← c.denoteExpr}"
  else if (← hasChar) then
    c.setUnsat
  else if (← pure (n.natAbs == 1) <&&> isField) then
    c.setUnsat
  else
    let mut c := c
    let mut n := n
    if n < 0 then
      n := -n
      c := { c with p := .num n, h := .mul (-1) c }
    if let some c' := (← getCommRing).numEq0? then
      let .num m := c'.p | unreachable!
      let (g, a, b) := gcdExt n m
      if g == m then
        /-
        `n` is a multiple of the current `numEq0`; the new constraint is redundant.
        We must not set `numEq0Updated` here: superposition may keep regenerating the
        same constant, and requeueing the basis each time would loop until `maxSteps`.
        -/
        trace_goal[grind.ring.assert.trivial] "{← c.denoteExpr}"
        return true
      c := { c with p := .num g, h := .gcd a b c c' }
    modifyCommRing fun s => { s with numEq0? := some c, numEq0Updated := true }
    trace_goal[grind.ring.assert.store] "{← c.denoteExpr}"
  return true

/--
Simplifies and checks whether the resulting constraint is trivial (i.e., `0 = 0`),
or inconsistent (i.e., `k = 0` where `k % c != 0` for a comm-ring with characteristic `c`),
and returns `none`. Otherwise, returns the simplified constraint.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f88872c0e0fc1b6f09167e064498454595d5795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
