# mem_extremePoints_measure_univ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0800451-c266-c3c2-0947-b514cc08e656",
  "kind": "theorem",
  "lexical_name": "mem_extremePoints_measure_univ_eq",
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
  "slug": "mem-extremepoints-measure-univ-eq--dde14d3b5eba3a29a5932713",
  "source": {
    "blob": "f546eb5ecc5f195a960c9b9895f43a8f8327fd79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dde14d3b5eba3a29a593271326a964fb38a0e6908f1894b73e2322f39bf6dbe2",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0800451-c266-c3c2-0947-b514cc08e656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_extremePoints_measure_univ_eq [IsFiniteMeasure μ] (hμ : Ergodic f μ) :
    μ ∈ extremePoints ℝ≥0∞ {ν | MeasurePreserving f ν ν ∧ ν univ = μ univ} := by
  rw [mem_extremePoints_iff_left]
  refine ⟨⟨hμ.toMeasurePreserving, rfl⟩, ?_⟩
  rintro ν₁ ⟨hfν₁, hν₁μ⟩ ν₂ ⟨hfν₂, hν₂μ⟩ ⟨a, b, ha, hb, hab, rfl⟩
  have : IsFiniteMeasure ν₁ := ⟨by rw [hν₁μ]; apply measure_lt_top⟩
  apply hμ.eq_of_absolutelyContinuous_measure_univ_eq hfν₁ (.add_right _ _) hν₁μ
  apply absolutelyContinuous_smul ha.ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f546eb5ecc5f195a960c9b9895f43a8f8327fd79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
