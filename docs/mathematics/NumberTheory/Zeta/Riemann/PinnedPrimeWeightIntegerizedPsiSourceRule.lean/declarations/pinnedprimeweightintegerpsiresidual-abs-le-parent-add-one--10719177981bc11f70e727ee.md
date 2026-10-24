# pinnedPrimeWeightIntegerPsiResidual_abs_le_parent_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c29489-009b-49cf-8e9f-180154bf9c5b",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightIntegerPsiResidual_abs_le_parent_add_one",
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
  "slug": "pinnedprimeweightintegerpsiresidual-abs-le-parent-add-one--10719177981bc11f70e727ee",
  "source": {
    "blob": "8b38b9d6436983921e3687a4d154a8b90c700bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10719177981bc11f70e727eece5934804c35188ee1f588db6256272ab7dc01de",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c29489-009b-49cf-8e9f-180154bf9c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightIntegerPsiResidual_abs_le_parent_add_one
    {j : ℕ} {v : ℝ} (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    |pinnedPrimeWeightIntegerPsiSourceRule.signedResidual j v| ≤
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 := by
  rw [pinnedPrimeWeightIntegerPsiSourceRule_signedResidual,
    pinnedPrimeWeightPsiSourceRule_signedResidual]
  calc
    |(θ v - ψ v) + ((pinnedPrimeWeightPsiGridIndex v : ℝ) - v)|
        ≤ |θ v - ψ v| +
            |(pinnedPrimeWeightPsiGridIndex v : ℝ) - v| := abs_add_le _ _
    _ ≤ |θ v - ψ v| + 1 :=
      add_le_add le_rfl
        (pinnedPrimeWeightPsiFloorCorrection_abs_le_one
          (pinnedPrimeWeightNextOctave_nonnegative hv))

/-- Exact parent/new response comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightIntegerizedPsiSourceRule.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b38b9d6436983921e3687a4d154a8b90c700bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
