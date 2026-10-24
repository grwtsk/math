# IntervalDyadic.mem_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6dcdc7e-49ac-833e-7fd7-adaafba626be",
  "kind": "theorem",
  "lexical_name": "IntervalDyadic.mem_neg",
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
  "slug": "intervaldyadic-mem-neg--75477b3998a4c72b223dad8d",
  "source": {
    "blob": "0c8a79a90491a513f6abc7dac3cc067dfc5e7a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75477b3998a4c72b223dad8d0aade1c3d131939ea0c34fea551620c27ffd5054",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6dcdc7e-49ac-833e-7fd7-adaafba626be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntervalDyadic.mem_neg {x : ℝ} {I : IntervalDyadic} (hx : x ∈ I) :
    -x ∈ I.neg := by
  simp only [IntervalDyadic.mem_def] at hx ⊢
  constructor
  · -- Lower bound: (I.neg.lo.toRat : ℝ) ≤ -x
    show (↑(Core.Dyadic.neg I.hi).toRat : ℝ) ≤ -x
    rw [Core.Dyadic.toRat_neg, Rat.cast_neg]
    linarith [hx.2]
  · -- Upper bound: -x ≤ (I.neg.hi.toRat : ℝ)
    show -x ≤ ↑(Core.Dyadic.neg I.lo).toRat
    rw [Core.Dyadic.toRat_neg, Rat.cast_neg]
    linarith [hx.1]

/-- Subtract two intervals: I - J = I + (-J) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c8a79a90491a513f6abc7dac3cc067dfc5e7a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
