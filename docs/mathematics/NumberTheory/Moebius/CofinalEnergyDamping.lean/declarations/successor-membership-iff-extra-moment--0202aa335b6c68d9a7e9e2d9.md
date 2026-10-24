# successor_membership_iff_extra_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c0e0587-19a8-c7d5-42da-d40303d53ec3",
  "kind": "theorem",
  "lexical_name": "successor_membership_iff_extra_moment",
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
  "slug": "successor-membership-iff-extra-moment--0202aa335b6c68d9a7e9e2d9",
  "source": {
    "blob": "695ac2e5080e93ea4bcf619913ee2f4ac3beaff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0202aa335b6c68d9a7e9e2d96999b235811ac4cd987b22498a6d70e1a476c83c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CofinalEnergyDamping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c0e0587-19a8-c7d5-42da-d40303d53ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem successor_membership_iff_extra_moment (n : ℕ) :
    reciprocalDamping (n + 1) ∈ pickupEnergyConvergenceSet ↔
      IntegrableOn (fun u : ℝ ↦
        Real.exp ((reciprocalDamping n - reciprocalDamping (n + 1)) * u) *
          (Real.exp (-(reciprocalDamping n) * u) * wholePickup u ^ 2)) (Ici 0) := by
  have hid : (fun u : ℝ ↦
      Real.exp (-(reciprocalDamping (n + 1)) * u) * wholePickup u ^ 2) =
      (fun u : ℝ ↦
        Real.exp ((reciprocalDamping n - reciprocalDamping (n + 1)) * u) *
          (Real.exp (-(reciprocalDamping n) * u) * wholePickup u ^ 2)) :=
    funext (successor_density_identity n)
  constructor
  · intro hp
    rw [← hid]
    exact hp.2
  · intro hi
    rw [← hid] at hi
    exact ⟨reciprocalDamping_pos (n + 1), hi⟩

/-- OPEN arithmetic supplier. An implication field is not a construction of its proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CofinalEnergyDamping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695ac2e5080e93ea4bcf619913ee2f4ac3beaff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
