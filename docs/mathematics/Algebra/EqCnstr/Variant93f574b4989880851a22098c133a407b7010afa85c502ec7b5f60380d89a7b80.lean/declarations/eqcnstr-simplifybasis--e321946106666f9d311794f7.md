# EqCnstr.simplifyBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cbdbfd9288a6f81629256d80a82871f5728c578dfe27c5641793d6fea8d3fc9",
  "kind": "def",
  "lexical_name": "EqCnstr.simplifyBasis",
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
  "slug": "eqcnstr-simplifybasis--e321946106666f9d311794f7",
  "source": {
    "blob": "6df59ab70f234b8c96a98a7ada30873af94abf44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 310,
    "path": "GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e321946106666f9d311794f7426b66278342710c38ac9cf304f68c3595485cbf",
  "verification": {
    "reference": "docs/verification/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cbdbfd9288a6f81629256d80a82871f5728c578dfe27c5641793d6fea8d3fc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EqCnstr.simplifyBasis (c : EqCnstr) : RingM Unit := withCheckCoeffDvd do
  trace[grind.debug.ring.simpBasis] "using: {← c.denoteExpr}"
  let .add _ m _ := c.p | return ()
  let rec go (basis : List EqCnstr) (acc : List EqCnstr) : RingM (List EqCnstr) := do
    match basis with
    | [] => return acc.reverse
    | c' :: basis =>
      match c'.p with
      | .add _ m' _ =>
        if m.divides m' then
          /-
          **Note**: Only the first `simplifyWithCore` step is inspected because it decides basis
          membership: if it returns `none` (the leading monomial divides, but the rewrite is blocked by
          the `checkCoeffDvd` restriction), `c'` must remain in the basis untouched.
          -/
          if let some c'' ← c'.simplifyWithCore c then
            let c'' ← c''.simplifyWithExhaustively c
            trace[grind.debug.ring.simpBasis] "simplified: {← c''.denoteExpr}"
            unless (← checkConstant c'') do
              addToQueue c''
            go basis acc
          else
            -- The rewrite was skipped because of the `checkCoeffDvd` restriction. Keep `c'`.
            go basis (c' :: acc)
        else
          go basis (c' :: acc)
      | _ => go basis (c' :: acc)
  let basis ← go (← getCommRing).basis []
  modifyCommRing fun s => { s with basis }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df59ab70f234b8c96a98a7ada30873af94abf44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
