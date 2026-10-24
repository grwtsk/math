# getElem_do_pure_rat_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da5a10d50af788618bea7e02100745578c59327d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a45b8258-1f27-5d14-970c-0693c8c40f04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a48914f-9f46-7f8c-cf56-bd416d793f46",
  "kind": "theorem",
  "lexical_name": "getElem_do_pure_rat_real",
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
  "slug": "getelem-do-pure-rat-real--bfd71e01a1ecfdb95ccaaebe",
  "source": {
    "blob": "da5a10d50af788618bea7e02100745578c59327d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 510,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfd71e01a1ecfdb95ccaaebe1e759052ee3f90b9191390c9a1d0fd348f492ea9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a48914f-9f46-7f8c-cf56-bd416d793f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem getElem_do_pure_rat_real (xs : List ℚ) (i : Nat) (hi : i < xs.length)
    (hi' : i < (do let a ← xs; pure (a : ℝ)).length) :
    (do let a ← xs; pure (a : ℝ))[i]'hi' = (xs[i]'hi : ℝ) := by
  induction xs generalizing i with
  | nil => simp only [List.length_nil, Nat.not_lt_zero] at hi
  | cons x xs ih =>
    cases i with
    | zero =>
      -- LHS: (do let a ← x :: xs; pure ↑a)[0] = ↑x :: (do let a ← xs; pure ↑a)[0] = ↑x
      -- RHS: (x :: xs)[0] = x
      rfl
    | succ j =>
      simp only [List.length_cons, Nat.add_lt_add_iff_right] at hi
      have hi'_j : j < (do let a ← xs; pure (a : ℝ)).length := by
        simp only [length_do_pure_rat_real]; exact hi
      -- LHS: (do let a ← x :: xs; pure ↑a)[j+1] = (↑x :: (do let a ← xs; pure ↑a))[j+1]
      --    = (do let a ← xs; pure ↑a)[j]
      -- RHS: (x :: xs)[j+1] = xs[j]
      simp only [List.getElem_cons_succ]
      exact ih j hi hi'_j

/-- Helper: getElem result is independent of the proof of bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5a10d50af788618bea7e02100745578c59327d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
