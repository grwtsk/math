# toPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0775287519eb89dc266547dc1a90cfdf0439654777af30f18f53758db36d498",
  "kind": "def",
  "lexical_name": "toPoly",
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
  "slug": "topoly--5267e4c1a4c8b974f1f5dacd",
  "source": {
    "blob": "1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 74,
    "path": "GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5267e4c1a4c8b974f1f5dacdd66ccc075aaf98153f18574ef2e2295a36596a27",
  "verification": {
    "reference": "docs/verification/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0775287519eb89dc266547dc1a90cfdf0439654777af30f18f53758db36d498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def toPoly (e : RingExpr) : OptionT RingM Poly := do
  match e with
  | .intCast n | .natCast n
  | .num n   => return .num (← applyChar n)
  | .var x   => return .ofVar x
  | .add a b => combine (← toPoly a) (← toPoly b)
  | .mul a b => mul (← toPoly a) (← toPoly b)
  | .neg a   => mulConst (-1) (← toPoly a)
  | .sub a b => combine (← toPoly a) (← mulConst (-1) (← toPoly b))
  | .pow a k =>
    if k == 0 then
      return .num 1
    else match a with
    | .num n =>
      guard (← checkExp k |>.run).isSome
      return .num (← applyChar (n^k))
    | .var x => return .ofMon (.mult {x, k} .unit)
    | _ => pow (← toPoly a) k

/--
Converts the given ring expression into a multivariate polynomial.
If the ring has a nonzero characteristic, it is used during normalization.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
