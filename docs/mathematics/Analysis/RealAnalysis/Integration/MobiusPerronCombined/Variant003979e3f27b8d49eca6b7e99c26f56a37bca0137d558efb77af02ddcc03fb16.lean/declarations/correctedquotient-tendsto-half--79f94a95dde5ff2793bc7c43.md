# correctedQuotient_tendsto_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39223888-9789-1c6e-d56a-9a7cdb0c6fe6",
  "kind": "theorem",
  "lexical_name": "correctedQuotient_tendsto_half",
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
  "slug": "correctedquotient-tendsto-half--79f94a95dde5ff2793bc7c43",
  "source": {
    "blob": "eb9e8c79588b6d6b5878a391564e142feac31fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 359,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f94a95dde5ff2793bc7c43d7ffc8a547bf6e69649039dc34c41532c7f393c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39223888-9789-1c6e-d56a-9a7cdb0c6fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedQuotient_tendsto_half (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (logNormalization X : ℂ)) := by
  have hc : Tendsto (correctedQuotient X) (𝓝[≠] (1 / 2))
      (𝓝 (correctedQuotient X (1 / 2))) :=
    ((correctedQuotient_differentiable X).continuous.continuousAt
    (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
  rw [correctedQuotient_half X hX] at hc
  apply hc.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact correctedQuotient_of_ne X z hz

end
end FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator


/-!
The original logarithmically weighted Möbius prefix has a genuinely convergent
Perron integral in its initial half-plane. Every infinite exchange uses an
explicit summable L1 majorant. No contour shift or large-scale limit is used.
-/
set_option autoImplicit false
namespace MobiusPerronScratch
open MeasureTheory Set Filter
open scoped LSeries.notation
open FormalResearch.RiemannHypothesis.SourceComparison
open SmoothedPerronKernel MobiusPoleNumerator
noncomputable section

/-- The original Möbius Dirichlet series is the actual zeta reciprocal where it converges absolutely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb9e8c79588b6d6b5878a391564e142feac31fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
