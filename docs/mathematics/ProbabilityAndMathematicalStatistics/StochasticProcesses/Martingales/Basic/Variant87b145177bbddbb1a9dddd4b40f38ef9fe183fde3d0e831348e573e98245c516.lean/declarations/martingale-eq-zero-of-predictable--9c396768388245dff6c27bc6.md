# Martingale.eq_zero_of_predictable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "479a8484ba70fd3cbc5341092c5479a3454b9dfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0c56a05-01b6-15a5-64ef-d98e6bb03b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85621d86-ade3-8045-985b-4c3826ca2151",
  "kind": "theorem",
  "lexical_name": "Martingale.eq_zero_of_predictable",
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
  "slug": "martingale-eq-zero-of-predictable--9c396768388245dff6c27bc6",
  "source": {
    "blob": "479a8484ba70fd3cbc5341092c5479a3454b9dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 513,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c396768388245dff6c27bc68c42524c71391eb80a615137897d2302a1f1effa",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85621d86-ade3-8045-985b-4c3826ca2151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Martingale.eq_zero_of_predictable [CompleteSpace E] [SigmaFiniteFiltration μ 𝒢]
    {f : ℕ → Ω → E}
    (hfmgle : Martingale f 𝒢 μ) (hfadp : StronglyAdapted 𝒢 fun n => f (n + 1)) (n : ℕ) :
    f n =ᵐ[μ] f 0 := by
  induction n with
  | zero => rfl
  | succ k ih =>
    exact ((Germ.coe_eq.mp (congr_arg Germ.ofFun <| condExp_of_stronglyMeasurable (𝒢.le _) (hfadp _)
      (hfmgle.integrable _))).symm.trans (hfmgle.2 k (k + 1) k.le_succ)).trans ih

section IsStronglyPredictable

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- A predictable submartingale is a.e. greater than or equal to its initial state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Basic/Variant87b145177bbddbb1a9dddd4b40f38ef9fe183fde3d0e831348e573e98245c516.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `479a8484ba70fd3cbc5341092c5479a3454b9dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
