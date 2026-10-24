# circleAverage_re_herglotzRieszKernel_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d0f0dc2-e2f5-f9ac-bebf-ae096891b3c5",
  "kind": "theorem",
  "lexical_name": "circleAverage_re_herglotzRieszKernel_mul_log",
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
  "slug": "circleaverage-re-herglotzrieszkernel-mul-log--4c63ee3c4d93d256cb749ba0",
  "source": {
    "blob": "f03f5d86b80d11c091232ecfc47d21f951edf1ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c63ee3c4d93d256cb749ba0e981bb1659ba33c462e99cda933c7f828613caf9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d0f0dc2-e2f5-f9ac-bebf-ae096891b3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleAverage_re_herglotzRieszKernel_mul_log {w ρ c : ℂ} {R : ℝ} (hρ : ρ ∈ sphere c R)
    (hw : w ∈ ball c R) :
    circleAverage ((Complex.re ∘ herglotzRieszKernel c w) * (log ‖· - ρ‖)) c R = log ‖w - ρ‖ := by
  simp only [← circleAverage_map_add_const, Pi.mul_apply, Function.comp_apply, add_zero]
  conv =>
    left; arg 1
    intro z
    rw [(by ring : (z + 0 + c) - ρ = z - (ρ - c))]
    arg 1; arg 1
    rw [add_zero, herglotzRieszKernel_add_const c w z]
  have : (fun z ↦ (herglotzRieszKernel 0 (w - c) z).re * log ‖z - (ρ - c)‖) =
    (Complex.re ∘ herglotzRieszKernel 0 (w - c)) • (log ‖· - (ρ - c)‖) := by rfl
  rw [this, circleAverage_re_herglotzRieszKernel_mul_log₀ (by simp_all)
    (by simp_all [mem_ball_iff_norm.1 hw])]
  simp

/--
Let `D : ℂ → ℤ` be a function with locally finite support within the closed ball with center `c` and
radius `R`, such as the zero- and pole divisor of a meromorphic function.  Then, the circle average
of the function `∑ᶠ u, (D u * log ‖· - u‖)` over the boundary of the ball equals
`∑ᶠ u, D u * log R`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant802870a0a24da4c68707c662d96c30f938b1f3ea91e2252fc62a22e8e2f44380.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f03f5d86b80d11c091232ecfc47d21f951edf1ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
