# momentMeasure_Ioi_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49695010-ca1e-d68b-4949-dbad2f0e313e",
  "kind": "theorem",
  "lexical_name": "momentMeasure_Ioi_positive",
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
  "slug": "momentmeasure-ioi-positive--02c6deda722beed7b5e5487e",
  "source": {
    "blob": "80507dd15d009639e0d9e17caf34246efb511f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 324,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c6deda722beed7b5e5487ea70681309b49d0acb9fe13fdeca1fceb778ecd04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49695010-ca1e-d68b-4949-dbad2f0e313e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentMeasure_Ioi_positive (r : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    0 < momentMeasure t (Ioi r) := by
  apply pos_iff_ne_zero.mpr
  intro hz
  rw [momentMeasure, Measure.map_apply (f := fun u : ℝ => u - t) (measurable_id.sub_const t) measurableSet_Ioi] at hz
  have hb := sourceMeasure_dominates_restricted_volume ht hz
  have hm : MeasurableSet ((fun u : ℝ => u - t) ⁻¹' Ioi r) :=
    (measurable_id.sub_const t) measurableSet_Ioi
  rw [Measure.restrict_apply hm] at hb
  have hpos : 0 < volume (Ioo (t + max r 0 + 1) (t + max r 0 + 2)) := by simp
  have hle : volume (Ioo (t + max r 0 + 1) (t + max r 0 + 2)) ≤
      volume ((fun u : ℝ => u - t) ⁻¹' Ioi r ∩ Ici t) := by
    apply measure_mono
    intro u hu
    have hm1 := le_max_left r 0
    have hm2 := le_max_right r 0
    constructor
    · change r < u - t
      linarith [hu.1]
    · change t ≤ u
      linarith [hu.1]
  rw [hb] at hle
  exact not_lt_of_ge hle hpos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80507dd15d009639e0d9e17caf34246efb511f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
