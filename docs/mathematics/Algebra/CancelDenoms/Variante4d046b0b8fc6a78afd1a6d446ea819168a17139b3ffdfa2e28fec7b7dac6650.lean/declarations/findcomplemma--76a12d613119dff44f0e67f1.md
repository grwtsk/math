# findCompLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7c8d7fcd15558cd6193d5f70d367c07f54193024254262e321d300a9ce43615",
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
  "slug": "findcomplemma--76a12d613119dff44f0e67f1",
  "source": {
    "blob": "d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 231,
    "path": "GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76a12d613119dff44f0e67f1ef1650a4c9d9d4384a61ea3d0803d50684ed48ce",
  "verification": {
    "reference": "docs/verification/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7c8d7fcd15558cd6193d5f70d367c07f54193024254262e321d300a9ce43615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findCompLemma (e : Expr) : Option (Expr × Expr × Name × Bool) :=
  match e.getAppFnArgs with
  | (``LT.lt, #[_, _, a, b]) => (a, b, ``cancel_factors_lt, true)
  | (``LE.le, #[_, _, a, b]) => (a, b, ``cancel_factors_le, true)
  | (``Eq, #[_, a, b]) => (a, b, ``cancel_factors_eq, false)
  | (``Ne, #[_, a, b]) => (a, b, ``cancel_factors_ne, false)
  | (``GE.ge, #[_, _, a, b]) => (b, a, ``cancel_factors_le, true)
  | (``GT.gt, #[_, _, a, b]) => (b, a, ``cancel_factors_lt, true)
  | _ => none

/--
`cancelDenominatorsInType h` assumes that `h` is of the form `lhs R rhs`,
where `R ∈ {<, ≤, =, ≠, ≥, >}`.
It produces an Expression `h'` of the form `lhs' R rhs'` and a proof that `h = h'`.
Numeric denominators have been canceled in `lhs'` and `rhs'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
