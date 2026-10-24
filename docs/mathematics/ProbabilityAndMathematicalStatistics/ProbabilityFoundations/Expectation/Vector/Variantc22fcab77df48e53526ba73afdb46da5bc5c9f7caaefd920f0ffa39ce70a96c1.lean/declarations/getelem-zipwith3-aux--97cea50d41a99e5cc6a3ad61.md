# getElem_zipWith3_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e2948ea-f928-a42e-52af-d4b01d04c0bc",
  "kind": "theorem",
  "lexical_name": "getElem_zipWith3_aux",
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
  "slug": "getelem-zipwith3-aux--97cea50d41a99e5cc6a3ad61",
  "source": {
    "blob": "f23ce61f8848de0853a45d35af011df66345fb58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 481,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97cea50d41a99e5cc6a3ad610b5906bb939545476ce3912e122b0ae0187a1ce3",
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

Occurrence: `result:8e2948ea-f928-a42e-52af-d4b01d04c0bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem getElem_zipWith3_aux {α β γ δ : Type*} (f : α → β → γ → δ)
    (as : List α) (bs : List β) (cs : List γ) (i : Nat)
    (hi_a : i < as.length) (hi_b : i < bs.length) (hi_c : i < cs.length) :
    (List.zipWith3 f as bs cs)[i]'(by rw [length_zipWith3_aux]; omega) =
      f (as[i]'hi_a) (bs[i]'hi_b) (cs[i]'hi_c) := by
  induction as generalizing bs cs i with
  | nil => simp only [List.length_nil, Nat.not_lt_zero] at hi_a
  | cons a as ih =>
    cases bs with
    | nil => simp only [List.length_nil, Nat.not_lt_zero] at hi_b
    | cons b bs =>
      cases cs with
      | nil => simp only [List.length_nil, Nat.not_lt_zero] at hi_c
      | cons c cs =>
        cases i with
        | zero => simp only [List.zipWith3, List.getElem_cons_zero]
        | succ j =>
          simp only [List.zipWith3, List.getElem_cons_succ]
          simp only [List.length_cons, Nat.add_lt_add_iff_right] at hi_a hi_b hi_c
          exact ih bs cs j hi_a hi_b hi_c

/-- Helper: do-notation coercion list has same length for rationals to reals.
    (do let a ← xs; pure (a : ℝ)) = xs.map (↑·) for lists, so length is preserved.
    Technical proof about list monad desugaring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23ce61f8848de0853a45d35af011df66345fb58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
