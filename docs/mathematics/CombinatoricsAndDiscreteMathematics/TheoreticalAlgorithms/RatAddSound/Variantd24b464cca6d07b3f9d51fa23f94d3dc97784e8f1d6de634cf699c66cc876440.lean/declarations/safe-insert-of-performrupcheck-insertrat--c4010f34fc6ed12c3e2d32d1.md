# safe_insert_of_performRupCheck_insertRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abd42a89-8dfc-ae25-6b13-eb9d9c282a14",
  "kind": "theorem",
  "lexical_name": "safe_insert_of_performRupCheck_insertRat",
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
  "slug": "safe-insert-of-performrupcheck-insertrat--c4010f34fc6ed12c3e2d32d1",
  "source": {
    "blob": "0ba143a5e2f63cd00abe496a1a92efba4f69e737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4010f34fc6ed12c3e2d32d126aafe8d55d8a9e4586e784d0d268c7ca0247382",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd42a89-8dfc-ae25-6b13-eb9d9c282a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem safe_insert_of_performRupCheck_insertRat {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ AssignmentsInvariant f) (c : DefaultClause n) (rupHints : Array Nat) :
    (performRupCheck (insertRatUnits f (negate c)).1 rupHints).2.2.1 = true
      →
    Limplies (PosFin n) f (f.insert c) := by
  intro performRupCheck_success p pf
  simp only [performRupCheck] at performRupCheck_success
  simp only [formulaEntails_def, List.all_eq_true, decide_eq_true_eq]
  intro c' c'_in_fc
  rw [insert_iff] at c'_in_fc
  rcases c'_in_fc with c'_eq_c | c'_in_f
  · rw [c'_eq_c]
    exact sat_of_confirmRupHint_of_insertRat_fold f hf c rupHints p pf performRupCheck_success
  · simp only [formulaEntails_def, List.all_eq_true, decide_eq_true_eq] at pf
    exact pf c' c'_in_f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ba143a5e2f63cd00abe496a1a92efba4f69e737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
