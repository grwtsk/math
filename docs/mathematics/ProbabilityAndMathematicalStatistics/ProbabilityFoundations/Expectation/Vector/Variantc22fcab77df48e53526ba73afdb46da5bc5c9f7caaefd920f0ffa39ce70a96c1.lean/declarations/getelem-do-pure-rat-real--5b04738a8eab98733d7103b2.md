# getElem_do_pure_rat_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:144b3de0-3b59-0b92-28ed-67f06602f5d8",
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
  "slug": "getelem-do-pure-rat-real--5b04738a8eab98733d7103b2",
  "source": {
    "blob": "f23ce61f8848de0853a45d35af011df66345fb58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 518,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b04738a8eab98733d7103b2cc0982007ae1d133c475722895e54010eccf324b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:144b3de0-3b59-0b92-28ed-67f06602f5d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–539.

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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23ce61f8848de0853a45d35af011df66345fb58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
