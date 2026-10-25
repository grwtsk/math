# xsq_minus_two_lt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3605afc794721633203ece297d9271b7e312967c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96496a64-8b45-1d6c-a45a-58de26ead9eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14f51f27-829b-5217-66eb-7fe678a7d972",
  "kind": "theorem",
  "lexical_name": "xsq_minus_two_lt_zero",
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
  "slug": "xsq-minus-two-lt-zero--9786b36c765c386be34d2b87",
  "source": {
    "blob": "3605afc794721633203ece297d9271b7e312967c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9786b36c765c386be34d2b87f38088f70a08ea8c1280bddbf0bc4de9560b205a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14f51f27-829b-5217-66eb-7fe678a7d972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xsq_minus_two_lt_zero : ∀ x ∈ I01, Expr.eval (fun _ => x) exprXSqMinus2 < (0 : ℚ) := by
  intro x hx
  simp only [exprXSqMinus2, Expr.eval_add, Expr.eval_mul, Expr.eval_neg, Expr.eval_const, Expr.eval_var]
  have h1 : x * x ≤ (1 : ℝ) := by
    have := xsq_le_one x hx
    simp only [exprXSq, Expr.eval_mul, Expr.eval_var] at this
    exact_mod_cast this
  have hlt : x * x + (-(2 : ℝ)) < (0 : ℝ) := by linarith
  exact_mod_cast hlt

/-! ### Working with polynomials -/

/-- The expression 2x² + 3x + 1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantcf6fb04af000ccc56d3d17dee069dd775c47c28a02a3921dd210a108a7c71644.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3605afc794721633203ece297d9271b7e312967c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
