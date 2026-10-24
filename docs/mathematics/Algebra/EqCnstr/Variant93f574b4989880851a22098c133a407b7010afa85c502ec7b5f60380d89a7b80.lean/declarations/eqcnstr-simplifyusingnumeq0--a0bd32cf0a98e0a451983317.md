# EqCnstr.simplifyUsingNumEq0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90619a988bbeb3e06ad0ce060f1366a42346924302256bdb84e5b8d777558884",
  "kind": "def",
  "lexical_name": "EqCnstr.simplifyUsingNumEq0",
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
  "slug": "eqcnstr-simplifyusingnumeq0--a0bd32cf0a98e0a451983317",
  "source": {
    "blob": "6df59ab70f234b8c96a98a7ada30873af94abf44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 154,
    "path": "GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0bd32cf0a98e0a451983317e35839787ff57e4864037da83c9a5ae93006e44f",
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

Occurrence: `declaration:90619a988bbeb3e06ad0ce060f1366a42346924302256bdb84e5b8d777558884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EqCnstr.simplifyUsingNumEq0 (c : EqCnstr) : RingM EqCnstr := do
  let some c' := (← getCommRing).numEq0? | return c
  let .num k := c'.p | return c
  return { c with p := c.p.normEq0 k.natAbs, h := .numEq0 k.natAbs c' c }

/--
Simplify the given equation constraint using the current basis.

**Note**: This function (and `simplifyBasis`) runs with `checkCoeffDvd := true`. It rewrites a
monomial `k'*m'` using an equation with leading term `k*m` only if `k ∣ k'` (or the ring
implements `NoNatZeroDivisors`). Rewriting without this restriction requires multiplying the
equation by `k/gcd k k' ≠ ±1` first, and *replacing* an equation with the result loses
information: `p = 0` cannot be recovered from `(k/gcd k k') * p = 0` in an arbitrary
commutative ring. The consequences of the skipped rewrites are not lost: a skipped rewrite at
the leading monomial coincides with the S-polynomial computed by `superposeWith`, so it is
derived non-destructively. The price is that the basis is not
fully interreduced (e.g., `2*x = 0` and `3*x = 0` may coexist), and reduction is an incomplete
ideal-membership test in rings without `NoNatZeroDivisors` (e.g., `x = 0` is not derived from
`2*x = 0` and `3*x = 0`). The complete alternative is a strong Gröbner basis over `Int`
(Kandri-Rody & Kapur): replace multiply-through rewriting with Euclidean remainder reduction
on coefficients (`k' = q*k + r`, so the equation is never multiplied by a constant), and
additionally superpose gcd-polynomials (Bézout combinations producing `gcd k k'` times the lcm
of the leading monomials). We should consider this option in the future.

**Note**: If using `withCheckCoeffDvd` becomes too expensive when one does not have
`NoNatZeroDivisors`, we will add a flag to perform the simplification anyway even if
information is lost.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df59ab70f234b8c96a98a7ada30873af94abf44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
