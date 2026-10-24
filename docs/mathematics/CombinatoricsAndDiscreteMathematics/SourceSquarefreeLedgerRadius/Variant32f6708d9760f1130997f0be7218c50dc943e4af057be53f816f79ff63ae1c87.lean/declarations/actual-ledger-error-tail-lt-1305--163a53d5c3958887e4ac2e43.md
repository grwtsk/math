# actual_ledger_error_tail_lt_1305

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d43e8a4e-f78f-d635-b4ee-85d3f877c9df",
  "kind": "theorem",
  "lexical_name": "actual_ledger_error_tail_lt_1305",
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
  "slug": "actual-ledger-error-tail-lt-1305--163a53d5c3958887e4ac2e43",
  "source": {
    "blob": "9a201f4adb0eb439e7a08f98c6efa361f3ee7467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant32f6708d9760f1130997f0be7218c50dc943e4af057be53f816f79ff63ae1c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:163a53d5c3958887e4ac2e438de641eba82e9675e12c9c4187e1a05e8e232d75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant32f6708d9760f1130997f0be7218c50dc943e4af057be53f816f79ff63ae1c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d43e8a4e-f78f-d635-b4ee-85d3f877c9df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_ledger_error_tail_lt_1305 (Q : Real) (hQ : 91 <= Q) :
    forall A : Real, Q <= A -> abs (betaMainLedger A + independentMainTerm A) < 1305 := by
  intro A hQA
  exact (actual_ledger_error_tail_squarefree Q hQ A hQA).trans_lt
    (squarefreeLedgerCost_lt_1305 Q hQ)

/-- The original strict finite prefix stays at the supplied real radius Q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant32f6708d9760f1130997f0be7218c50dc943e4af057be53f816f79ff63ae1c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant32f6708d9760f1130997f0be7218c50dc943e4af057be53f816f79ff63ae1c87.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a201f4adb0eb439e7a08f98c6efa361f3ee7467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
