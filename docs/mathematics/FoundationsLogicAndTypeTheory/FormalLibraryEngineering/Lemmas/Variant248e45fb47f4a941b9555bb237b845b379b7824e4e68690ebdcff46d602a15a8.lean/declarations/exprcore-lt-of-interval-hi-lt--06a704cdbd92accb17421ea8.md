# exprCore_lt_of_interval_hi_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d36d3b68-f6c4-16df-a199-616b45e7d9ef",
  "kind": "theorem",
  "lexical_name": "exprCore_lt_of_interval_hi_lt",
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
  "slug": "exprcore-lt-of-interval-hi-lt--06a704cdbd92accb17421ea8",
  "source": {
    "blob": "ac7de29c5e447cc5dd65280a5566919da112ebf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant248e45fb47f4a941b9555bb237b845b379b7824e4e68690ebdcff46d602a15a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06a704cdbd92accb17421ea832983101da7e93a0586bb1c7dd8667649741f93b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant248e45fb47f4a941b9555bb237b845b379b7824e4e68690ebdcff46d602a15a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d36d3b68-f6c4-16df-a199-616b45e7d9ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exprCore_lt_of_interval_hi_lt (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig := {})
    (hdom : evalDomainValid1 e I cfg)
    (hhi : (evalIntervalCore1 e I cfg).hi < c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e < c := by
  intro x hx
  have hmem := evalIntervalCore1_correct e hsupp x I hx cfg hdom
  simp only [IntervalRat.mem_def] at hmem
  have heval_le_hi : Expr.eval (fun _ => x) e ≤ (evalIntervalCore1 e I cfg).hi := hmem.2
  have hhi_lt_c : ((evalIntervalCore1 e I cfg).hi : ℝ) < c := by exact_mod_cast hhi
  exact lt_of_le_of_lt heval_le_hi hhi_lt_c

/-- Strict lower bound for core expressions (computable).
    FULLY PROVED - no sorry, no axioms. Accepts configurable Taylor depth.
    Requires domain validity (e.g., log arguments must be positive). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant248e45fb47f4a941b9555bb237b845b379b7824e4e68690ebdcff46d602a15a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant248e45fb47f4a941b9555bb237b845b379b7824e4e68690ebdcff46d602a15a8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac7de29c5e447cc5dd65280a5566919da112ebf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
