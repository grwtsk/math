# strict_model_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1982e8a-8e66-2e9e-6d62-df136c8a5576",
  "kind": "theorem",
  "lexical_name": "strict_model_margin",
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
  "slug": "strict-model-margin--aba96c0dd06034f06e7b1b70",
  "source": {
    "blob": "bd524f65deb16d3af9c5fe6dab40bfdcb6a4be08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 100,
    "path": "GRWTSK/Analysis/Complex/SymmetricPairRational.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba96c0dd06034f06e7b1b70605644b81c218b9b7141b335f050b4767c1ff229",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPairRational.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1982e8a-8e66-2e9e-6d62-df136c8a5576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_model_margin {W : Data} {F : ℂ → ℂ} {c d : ℂ}
    (hv : W.Valid F c d) (hp : W.Pass) :
    (enclosure hv hp).budget < energy (W.model c) c d := by
  have hg : (W.upperBudget : ℝ) < (W.lowerEnergy : ℝ) := by
    exact_mod_cast hp.2.2.2.2
  have hbudget : (enclosure hv hp).budget ≤ (W.upperBudget : ℝ) := by
    simp only [Enclosure.budget, enclosure, upperBudget, Rat.cast_add,
      Rat.cast_pow, Rat.cast_mul]
    exact add_le_add_left (mul_le_mul_of_nonneg_right hv.2.2.2 (sq_nonneg _)) _
  have henergy : (W.lowerEnergy : ℝ) ≤ energy (W.model c) c d := by
    rw [lowerEnergy, Rat.cast_add, Rat.cast_mul, Gaussian.normSq_cast,
      Gaussian.normSq_cast]
    unfold energy
    rw [(W.model_channels c (displacement_ne_zero hv hp)).1,
      (W.model_channels c (displacement_ne_zero hv hp)).2]
    exact add_le_add_left (mul_le_mul_of_nonneg_right hv.2.2.1 (sq_nonneg _)) _
  exact hbudget.trans_lt (hg.trans_le henergy)

/-- A passing BIT plus its source bindings excludes the actual symmetric zero pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPairRational.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPairRational.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd524f65deb16d3af9c5fe6dab40bfdcb6a4be08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
