# Submartingale.exists_ae_trim_tendsto_of_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c46787c6-46e1-cd84-e568-4b6135fb0be4",
  "kind": "theorem",
  "lexical_name": "Submartingale.exists_ae_trim_tendsto_of_bdd",
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
  "slug": "submartingale-exists-ae-trim-tendsto-of-bdd--4ccda063c054804033f1fe6b",
  "source": {
    "blob": "8295d1cfe59f4494e9c7aa6de6909ed0d37ceae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ccda063c054804033f1fe6bc6b98c89c1ea208e00d3eb2e4e2cbe6582cadfca",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c46787c6-46e1-cd84-e568-4b6135fb0be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.exists_ae_trim_tendsto_of_bdd [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ)
    (hbdd : ∀ n, eLpNorm (f n) 1 μ ≤ R) :
    ∀ᵐ ω ∂μ.trim (sSup_le fun _ ⟨_, hn⟩ => hn ▸ ℱ.le _ : ⨆ n, ℱ n ≤ m0),
      ∃ c, Tendsto (fun n => f n ω) atTop (𝓝 c) := by
  letI := (⨆ n, ℱ n)
  rw [ae_iff, trim_measurableSet_eq]
  · exact hf.exists_ae_tendsto_of_bdd hbdd
  · exact MeasurableSet.compl <| measurableSet_exists_tendsto
      fun n => (hf.stronglyMeasurable n).measurable.mono (le_sSup ⟨n, rfl⟩) le_rfl

/-- **Almost everywhere martingale convergence theorem**: An L¹-bounded submartingale converges
almost everywhere to a `⨆ n, ℱ n`-measurable function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2f7aa39e68d9ac0b5abed9373a22478045cccb500e80a8c41b4fd09dcb7dc9c8.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8295d1cfe59f4494e9c7aa6de6909ed0d37ceae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
