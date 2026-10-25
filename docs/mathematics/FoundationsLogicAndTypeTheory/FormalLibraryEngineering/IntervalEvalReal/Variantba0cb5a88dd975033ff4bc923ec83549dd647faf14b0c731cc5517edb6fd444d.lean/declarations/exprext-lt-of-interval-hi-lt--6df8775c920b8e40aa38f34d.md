# exprExt_lt_of_interval_hi_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23033025-11f0-a9ff-45eb-02e441975192",
  "kind": "theorem",
  "lexical_name": "exprExt_lt_of_interval_hi_lt",
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
  "slug": "exprext-lt-of-interval-hi-lt--6df8775c920b8e40aa38f34d",
  "source": {
    "blob": "c2ed4b2f53c2bd84851c3d47a5227de5dc022020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df8775c920b8e40aa38f34db9ec05cc8dfb75d546e8c78fc6ad3f24b3e6b7c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23033025-11f0-a9ff-45eb-02e441975192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exprExt_lt_of_interval_hi_lt (e : Expr) (hsupp : ExprSupportedExt e)
    (I : IntervalReal) (c : ℝ) (hhi : (evalIntervalReal1 e I).hi < c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e < c := by
  intro x hx
  have hmem := evalIntervalReal1_correct e hsupp x I hx
  simp only [IntervalReal.mem_def] at hmem
  exact lt_of_le_of_lt hmem.2 hhi

/-- Strict lower bound for extended subset.
    FULLY PROVED - no sorry, no axioms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2ed4b2f53c2bd84851c3d47a5227de5dc022020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
