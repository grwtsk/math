# hasDerivAt_composite_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "837852c22d7e2db1bdac0b9eb79d797cc823879a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a85a110-ccf2-4669-c489-5dfda9f937a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:328ce7d2-b09a-503b-0761-e702c4a19275",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_composite_second",
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
  "slug": "hasderivat-composite-second--07b7ecbca7799da7befe70ba",
  "source": {
    "blob": "837852c22d7e2db1bdac0b9eb79d797cc823879a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b7ecbca7799da7befe70ba8ee56ad5adedfc0d5115149e3cd2c9ef06b30de3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328ce7d2-b09a-503b-0761-e702c4a19275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_composite_second
    (f f₁ phi phi₁ : ℝ → ℝ) (U : Set ℝ) (hU : IsOpen U)
    (u f₂ phi₂ : ℝ) (hu : u ∈ U)
    (hf : ∀ y ∈ U, HasDerivAt f (f₁ (phi y)) (phi y))
    (hphi : ∀ y ∈ U, HasDerivAt phi (phi₁ y) y)
    (hf₁ : HasDerivAt f₁ f₂ (phi u))
    (hphi₁ : HasDerivAt phi₁ phi₂ u) :
    HasDerivAt (deriv (fun y => f (phi y)))
      (f₂ * (phi₁ u) ^ 2 + f₁ (phi u) * phi₂) u := by
  have heq : deriv (fun y => f (phi y)) =ᶠ[𝓝 u]
      (fun y => f₁ (phi y) * phi₁ y) := by
    filter_upwards [hU.mem_nhds hu] with y hy
    exact ((hf y hy).comp y (hphi y hy)).deriv
  have hp : HasDerivAt (fun y => f₁ (phi y) * phi₁ y)
      (f₂ * (phi₁ u) ^ 2 + f₁ (phi u) * phi₂) u := by
    apply ((hf₁.comp u (hphi u hu)).mul hphi₁).congr_deriv
    dsimp only [Function.comp_apply]
    ring
  exact hp.congr_of_eventuallyEq heq

/-- The forced chain-rule subtraction recovers the pullback quadratic coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant53d030f311e10c1f404f411586c6f1cb34de225caeff13199ac76b63714ca60e.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `837852c22d7e2db1bdac0b9eb79d797cc823879a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
