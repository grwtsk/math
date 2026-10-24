# minimumRep_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:875fd5e4-f979-78f4-7b63-0ed779c17615",
  "kind": "theorem",
  "lexical_name": "minimumRep_unique",
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
  "slug": "minimumrep-unique--45b2d048c91530f872139fe7",
  "source": {
    "blob": "450657419f5f489b567d1dd63a31bfcc3c56cf41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 211,
    "path": "GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b2d048c91530f872139fe7fce5bafac9fdd6f9c3c80f0290cb197eab16667a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:875fd5e4-f979-78f4-7b63-0ed779c17615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimumRep_unique (m : ℝ) (e : Triple ℝ) (v : Cell ℝ)
    (hv : reduced v = (m, e)) :
    rawEnergy v = reducedEnergy m e ↔ v = minimumRep m e := by
  have hp := pythagorean v
  rw [hv] at hp
  constructor
  · intro he
    have hr : dot3 (gaugeRemainder v) (gaugeRemainder v) = 0 := by
      dsimp at hp
      linarith
    have hz := (dot3_self_zero_iff _).mp hr
    calc
      v = gaugeShift (gaugeRemainder v) (normalForm v) := normal_decomposition v
      _ = minimumRep m e := by simp [hz, normalForm, hv, gaugeShift, delta0]
  · rintro rfl
    exact minimumRep_energy m e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450657419f5f489b567d1dd63a31bfcc3c56cf41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
