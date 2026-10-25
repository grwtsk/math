# exprCore_lt_of_interval_hi_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c6c7f58fd93fc2a256f3f020506b234b839a2a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f7674cb-ee32-50eb-d7cf-7c91d82bd5fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46d266af-cef2-37e1-3a81-8b6bea0ef820",
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
  "slug": "exprcore-lt-of-interval-hi-lt--22de3c57ee40e0a9e5537484",
  "source": {
    "blob": "9c6c7f58fd93fc2a256f3f020506b234b839a2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22de3c57ee40e0a9e55374848de38a34214411bc5280a0966e94398bdb8d096a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46d266af-cef2-37e1-3a81-8b6bea0ef820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c6c7f58fd93fc2a256f3f020506b234b839a2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
