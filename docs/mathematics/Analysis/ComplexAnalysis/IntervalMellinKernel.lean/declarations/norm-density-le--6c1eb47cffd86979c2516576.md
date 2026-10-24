# norm_density_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2776f6b-0902-9d24-c1a9-37e160564b6b",
  "kind": "theorem",
  "lexical_name": "norm_density_le",
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
  "slug": "norm-density-le--6c1eb47cffd86979c2516576",
  "source": {
    "blob": "28cb1e86a7b4b71d993a7934b75cf9604b369aec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1eb47cffd86979c2516576b0ae62c727bd40d9206c4a2e2ec4dbaa8f79735c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2776f6b-0902-9d24-c1a9-37e160564b6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_density_le {a b β t : ℝ} {z : ℂ}
    (ha : 1 < a) (ht : t ∈ Icc a b) (hz : z.re ≤ β) :
    ‖density z t‖ ≤ densityBound a b β := by
  have ha0 : 0 < a := lt_trans zero_lt_one ha
  have ht0 : 0 < t := ha0.trans_le ht.1
  have hlog0 : 0 ≤ Real.log t := Real.log_nonneg (ha.le.trans ht.1)
  have halog : Real.log a ≤ Real.log t := Real.log_le_log ha0 ht.1
  have hblog : Real.log t ≤ Real.log b := Real.log_le_log ht0 ht.2
  have hfirst : (z.re - 1) * Real.log t ≤ (β - 1) * Real.log t :=
    mul_le_mul_of_nonneg_right (sub_le_sub_right hz 1) hlog0
  have hlast : (β - 1) * Real.log t ≤
      max ((β - 1) * Real.log a) ((β - 1) * Real.log b) := by
    by_cases hβ : 0 ≤ β - 1
    · exact (mul_le_mul_of_nonneg_left hblog hβ).trans (le_max_right _ _)
    · exact (mul_le_mul_of_nonpos_left halog (le_of_not_ge hβ)).trans
        (le_max_left _ _)
  simpa [density, densityBound, Complex.norm_exp, Complex.mul_re] using
    Real.exp_le_exp.mpr (hfirst.trans hlast)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinKernel.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28cb1e86a7b4b71d993a7934b75cf9604b369aec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
