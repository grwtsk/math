# normRankCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:487ac22f9f97c99b9129416180912d0272e25f84881cb1c61d198a43dcf93749",
  "kind": "def",
  "lexical_name": "normRankCore",
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
  "slug": "normrankcore--c91c41f10913767f6a2f0ff6",
  "source": {
    "blob": "f92edde0d56ac82fb6184e774fc9fe53c1e74c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7d7053f71dd76e5c29c50ea01b92dc2893ba475fc8383c11b887c92fca5e230d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c91c41f10913767f6a2f0ff6fdddb03957474ab811598b4f660b0e50f73b7afe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7d7053f71dd76e5c29c50ea01b92dc2893ba475fc8383c11b887c92fca5e230d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:487ac22f9f97c99b9129416180912d0272e25f84881cb1c61d198a43dcf93749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normRankCore : Simp.Simproc := fun e => do
  let_expr Matrix.rank _ _ _ _ _ A := e | return .continue
  let A ← instantiateMVars A
  let some (m, n, R, entries) ← matchMatrixLit? A
    | trace[Tactic.evalRank] "not a closed matrix literal{indentExpr A}"
      return .continue
  match ← checkBareissApplicable R with
  | .ok _ => return .done (← normalizeRank e A m n R entries)
  | .error err =>
    trace[Tactic.evalRank] "{err}{indentExpr A}"
    return .continue

end Mathlib.Tactic.Echelon

open Mathlib.Tactic.Echelon

/-- The `norm_rank` simproc evaluates the rank of matrices with non-symbolic entries.
Terms that it cannot evaluate are skipped. -/
simproc_decl norm_rank (Matrix.rank _) := fun e => do
  try normRankCore e
  catch ex =>
    trace[Tactic.evalRank] "{ex.toMessageData}"
    return .continue

/--
`eval_rank` evaluates the rank of matrices with non-symbolic entries.

The element type must be a commutative domain with kernel-decidable equality.
Terms skipped can be viewed by using `set_option trace.Tactic.evalRank true`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7d7053f71dd76e5c29c50ea01b92dc2893ba475fc8383c11b887c92fca5e230d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormRank/Variant7d7053f71dd76e5c29c50ea01b92dc2893ba475fc8383c11b887c92fca5e230d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f92edde0d56ac82fb6184e774fc9fe53c1e74c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
