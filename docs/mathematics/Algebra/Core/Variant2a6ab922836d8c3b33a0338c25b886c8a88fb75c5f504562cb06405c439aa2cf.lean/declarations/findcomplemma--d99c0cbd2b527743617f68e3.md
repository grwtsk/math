# findCompLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b2cf41fc0927acbe15c3c8f7014186ca8bd18e2a2fd2da0f5d921fc80edf229",
  "kind": "def",
  "lexical_name": "findCompLemma",
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
  "slug": "findcomplemma--d99c0cbd2b527743617f68e3",
  "source": {
    "blob": "ffed805cd836b2ba102cfcd4e8d79a6078a3425d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 269,
    "path": "GRWTSK/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d99c0cbd2b527743617f68e3a724d987d170862bfd669f7912f9a69bb0b5c485",
  "verification": {
    "reference": "docs/verification/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b2cf41fc0927acbe15c3c8f7014186ca8bd18e2a2fd2da0f5d921fc80edf229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findCompLemma (e : Expr) : MetaM (Option (Expr × Expr × Name × Bool)) := do
  match (← whnfR e).getAppFnArgs with
  | (``LT.lt, #[_, _, a, b]) => return (a, b, ``cancel_factors_lt, true)
  | (``LE.le, #[_, _, a, b]) => return (a, b, ``cancel_factors_le, true)
  | (``Eq, #[_, a, b]) => return (a, b, ``cancel_factors_eq, false)
  -- `a ≠ b` reduces to `¬ a = b` under `whnf`
  | (``Not, #[p]) => match (← whnfR p).getAppFnArgs with
    | (``Eq, #[_, a, b]) => return (a, b, ``cancel_factors_ne, false)
    | _ => return none
  | (``GE.ge, #[_, _, a, b]) => return (b, a, ``cancel_factors_le, true)
  | (``GT.gt, #[_, _, a, b]) => return (b, a, ``cancel_factors_lt, true)
  | _ => return none

/--
`cancelDenominatorsInType h` assumes that `h` is of the form `lhs R rhs`,
where `R ∈ {<, ≤, =, ≠, ≥, >}`.
It produces an Expression `h'` of the form `lhs' R rhs'` and a proof that `h = h'`.
Numeric denominators have been canceled in `lhs'` and `rhs'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Core/Variant2a6ab922836d8c3b33a0338c25b886c8a88fb75c5f504562cb06405c439aa2cf.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffed805cd836b2ba102cfcd4e8d79a6078a3425d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
