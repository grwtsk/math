# expr_lt_of_interval_hi_lt

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
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97e87d9c-b3ef-d8c6-464b-aadc5b26816a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cca2ca2d-b39f-42ba-f584-8da115d989d4",
  "kind": "theorem",
  "lexical_name": "expr_lt_of_interval_hi_lt",
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
  "slug": "expr-lt-of-interval-hi-lt--9ccb7406b17a678c906e47de",
  "source": {
    "blob": "9c6c7f58fd93fc2a256f3f020506b234b839a2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ccb7406b17a678c906e47de691387f0d78b8cdb707971974c47524e2fe7955c",
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

Occurrence: `result:cca2ca2d-b39f-42ba-f584-8da115d989d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expr_lt_of_interval_hi_lt (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (hhi : (evalInterval1 e I).hi < c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e < c := by
  intro x hx
  have hmem := evalInterval1_correct e hsupp x I hx
  simp only [IntervalRat.mem_def] at hmem
  have heval_le_hi : Expr.eval (fun _ => x) e ≤ (evalInterval1 e I).hi := hmem.2
  have hhi_lt_c : ((evalInterval1 e I).hi : ℝ) < c := by exact_mod_cast hhi
  exact lt_of_le_of_lt heval_le_hi hhi_lt_c

/-- Strict lower bound for extended expressions.
    FULLY PROVED - no sorry, no axioms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c6c7f58fd93fc2a256f3f020506b234b839a2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
