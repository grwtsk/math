# zero_distance_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1083bbe-b118-8cc4-12ce-9fa79f6bbf36",
  "kind": "theorem",
  "lexical_name": "zero_distance_le",
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
  "slug": "zero-distance-le--9f44816a05b4cf215799dc5c",
  "source": {
    "blob": "96a4a162853b3bcd52adf92bec586be30c54c723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 108,
    "path": "GRWTSK/Analysis/Complex/NewtonDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f44816a05b4cf215799dc5c78348334b038506a39f887e0e35cab49323ca266",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1083bbe-b118-8cc4-12ce-9fa79f6bbf36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_distance_le {f g : ℂ → ℂ} {c A z : ℂ} {R κ η : ℝ}
    (hR : 0 ≤ R) (hk : κ < 1)
    (hf : ∀ u ∈ closedBall c R, HasDerivAt f (g u) u)
    (hb : ∀ u ∈ closedBall c R, ‖1 - A * g u‖ ≤ κ)
    (hres : ‖A * f c‖ ≤ η) (hz : z ∈ closedBall c R) (hfz : f z = 0) :
    ‖z - c‖ ≤ η / (1 - κ) := by
  have hc : c ∈ closedBall c R := by simpa using hR
  have hl := step_lipschitz hf hb hc hz
  have hr : ‖step f A c - c‖ ≤ η := by
    have he : step f A c - c = -(A * f c) := by unfold step; ring
    simpa only [he, norm_neg] using hres
  have htri : ‖step f A z - c‖ ≤ ‖step f A z - step f A c‖ + ‖step f A c - c‖ := by
    simpa only [dist_eq_norm] using dist_triangle (step f A z) (step f A c) c
  have he : step f A z = z := by simp [step, hfz]
  rw [he] at hl htri
  apply (le_div_iff₀ (sub_pos.mpr hk)).mpr
  nlinarith

/-- A genuine uniform second-derivative bound supplies derivative variation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NewtonDisk.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a4a162853b3bcd52adf92bec586be30c54c723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
