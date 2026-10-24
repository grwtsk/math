# sourceProbability_power_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85c382fa-cde9-712f-17ab-990cfa27d07c",
  "kind": "theorem",
  "lexical_name": "sourceProbability_power_integrable",
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
  "slug": "sourceprobability-power-integrable--cc3d6f18e6f86a2bfa52df11",
  "source": {
    "blob": "7ccdd4d24f308bb96f0d35f38706568843aa361c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantb1540604c14532088015aae44be33eeabf3f4aa30a5185710a8f609473e12371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc3d6f18e6f86a2bfa52df11983c3c55181c967a831d38e9f448f1de638578f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantb1540604c14532088015aae44be33eeabf3f4aa30a5185710a8f609473e12371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85c382fa-cde9-712f-17ab-990cfa27d07c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceProbability_power_integrable {A : ℝ} (hA : 1 ≤ A) (j : ℕ) :
    Integrable (fun ξ : ℝ => compensatedFourierSymbol A ξ ^ j)
      (sourceProbabilityMeasure A) := by
  unfold sourceProbabilityMeasure
  have hmeas : Measurable (fun ξ : ℝ =>
      ENNReal.ofReal (Complex.normSq (standardSourceTransform A ξ))) :=
    (Complex.continuous_normSq.comp
      (standardSourceTransform_continuous A hA)).measurable.ennreal_ofReal
  apply (integrable_withDensity_iff hmeas
    (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))).mpr
  simpa only [sourceDensity, ENNReal.toReal_ofReal (Complex.normSq_nonneg _)] using
    source_power_integrable hA j

/-- Every power under the actual probability source is the complete signed
tuple observation; no auxiliary moment is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantb1540604c14532088015aae44be33eeabf3f4aa30a5185710a8f609473e12371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantb1540604c14532088015aae44be33eeabf3f4aa30a5185710a8f609473e12371.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ccdd4d24f308bb96f0d35f38706568843aa361c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
