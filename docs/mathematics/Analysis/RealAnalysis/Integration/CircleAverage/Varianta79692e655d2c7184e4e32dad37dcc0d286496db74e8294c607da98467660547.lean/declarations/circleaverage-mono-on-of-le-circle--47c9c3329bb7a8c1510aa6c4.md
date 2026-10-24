# circleAverage_mono_on_of_le_circle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a944e2d2-99f9-bdf0-66d4-07575d438ae7",
  "kind": "theorem",
  "lexical_name": "circleAverage_mono_on_of_le_circle",
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
  "slug": "circleaverage-mono-on-of-le-circle--47c9c3329bb7a8c1510aa6c4",
  "source": {
    "blob": "fee8d1ab6e50edfc1b3355aa70f6d2515b934d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47c9c3329bb7a8c1510aa6c4783ef91e2a5bbf83e243cc00401f16cc5ff4fb7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a944e2d2-99f9-bdf0-66d4-07575d438ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleAverage_mono_on_of_le_circle {f : ℂ → ℝ} {a : ℝ} (hf : CircleIntegrable f c R)
    (h₂f : ∀ x ∈ Metric.sphere c |R|, f x ≤ a) :
    circleAverage f c R ≤ a := by
  rw [← circleAverage_const a c |R|, circleAverage, circleAverage, smul_eq_mul, smul_eq_mul,
    mul_le_mul_iff_of_pos_left (inv_pos.2 two_pi_pos)]
  exact intervalIntegral.integral_mono_on_of_le_Ioo (le_of_lt two_pi_pos) hf
    intervalIntegrable_const (fun θ _ ↦ h₂f (circleMap c R θ) (circleMap_mem_sphere' c R θ))

/--
Analogue of `intervalIntegral.abs_integral_le_integral_abs`: The absolute value of a circle average
is less than or equal to the circle average of the absolute value of the function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fee8d1ab6e50edfc1b3355aa70f6d2515b934d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
