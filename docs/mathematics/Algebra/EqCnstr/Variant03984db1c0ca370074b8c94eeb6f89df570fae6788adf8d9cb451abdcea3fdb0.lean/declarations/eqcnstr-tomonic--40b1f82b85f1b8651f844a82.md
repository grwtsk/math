# EqCnstr.toMonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fc50460a7605990dc43bb26c9d249bf3fbcb2dbe595a834b7911a7c9389d78a",
  "kind": "def",
  "lexical_name": "EqCnstr.toMonic",
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
  "slug": "eqcnstr-tomonic--40b1f82b85f1b8651f844a82",
  "source": {
    "blob": "3f88872c0e0fc1b6f09167e064498454595d5795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 293,
    "path": "GRWTSK/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40b1f82b85f1b8651f844a82d40336b66e012bb7ae12345c641e61dc789a3588",
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

Occurrence: `declaration:8fc50460a7605990dc43bb26c9d249bf3fbcb2dbe595a834b7911a7c9389d78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EqCnstr.toMonic (c : EqCnstr) : RingM EqCnstr := do
  let k := c.p.lc
  if k == 1 then return c
  if let some p ← nonzeroChar? then
    let (g, α, _β) := gcdExt k p
    if g == 1 then
      -- `α*k + β*p = 1`
      -- `α*k = 1 (mod p)`
      let α := if α < 0 then α % p else α
      return { c with p := c.p.mulConstC α p, h := .mul α c }
  if (← noZeroDivisors) then
    let g : Int := c.p.gcdCoeffs
    if g != 1 then
      let g := if k < 0 then -g else g
      return { c with p := c.p.divConst g, h := .div g c }
  if k < 0 then
    return { c with p := c.p.mulConst (-1), h := .mul (-1) c }
  return c

/--
Simplifies the basis using `c`. Every equation that `c` rewrites is removed from the basis
and requeued in its rewritten form.

See **Note** at `EqCnstr.simplify` for why `checkCoeffDvd` must be enabled here.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f88872c0e0fc1b6f09167e064498454595d5795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
