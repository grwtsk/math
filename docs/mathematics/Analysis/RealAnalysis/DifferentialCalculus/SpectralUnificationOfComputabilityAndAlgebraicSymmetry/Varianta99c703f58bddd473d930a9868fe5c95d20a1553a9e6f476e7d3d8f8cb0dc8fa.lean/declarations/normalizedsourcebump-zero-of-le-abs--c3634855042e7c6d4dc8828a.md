# normalizedSourceBump_zero_of_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03aaa8ef-05d9-ad02-4bae-b9a94c437940",
  "kind": "theorem",
  "lexical_name": "normalizedSourceBump_zero_of_le_abs",
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
  "slug": "normalizedsourcebump-zero-of-le-abs--c3634855042e7c6d4dc8828a",
  "source": {
    "blob": "d2871a225e8650ceab8fef35f2dcfb68c8d97473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta99c703f58bddd473d930a9868fe5c95d20a1553a9e6f476e7d3d8f8cb0dc8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3634855042e7c6d4dc8828a72edc416d5e7fe745bd865a89ee653f3e0e734c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta99c703f58bddd473d930a9868fe5c95d20a1553a9e6f476e7d3d8f8cb0dc8fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03aaa8ef-05d9-ad02-4bae-b9a94c437940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSourceBump_zero_of_le_abs (A x : ℝ) (hA : 0 < A) (hx : A ≤ |x|) :
    normalizedSourceBump A x = 0 ∧ deriv (normalizedSourceBump A) x = 0 := by
  rw [normalizedSourceBump_deriv A hA]
  unfold normalizedSourceBump
  rw [scaledBump_eq_indicator A hA]
  by_cases hm : x ∈ Icc (-A) A
  · have he : x = -A ∨ x = A := by
      rcases le_total x 0 with hn | hp
      · left
        rw [abs_of_nonpos hn] at hx
        exact le_antisymm (by linarith) hm.1
      · right
        rw [abs_of_nonneg hp] at hx
        exact le_antisymm hm.2 (by linarith)
    rcases he with he | he <;> rw [he] <;>
      simp [(bumpInterior_endpoints A hA.ne').1, (bumpInterior_endpoints A hA.ne').2,
        (firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2]
  · simp [indicator_of_notMem hm]

end
end EstimatePoleReducedBump
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta99c703f58bddd473d930a9868fe5c95d20a1553a9e6f476e7d3d8f8cb0dc8fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta99c703f58bddd473d930a9868fe5c95d20a1553a9e6f476e7d3d8f8cb0dc8fa.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2871a225e8650ceab8fef35f2dcfb68c8d97473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
