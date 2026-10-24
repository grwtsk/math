# faster_exponential_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8367bc8-ba79-594c-d62f-82250b661cb4",
  "kind": "theorem",
  "lexical_name": "faster_exponential_comparison",
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
  "slug": "faster-exponential-comparison--41734622280614296cb4e63e",
  "source": {
    "blob": "0216c0b6e5bbdddc1f34e6a45d5647e28d359ac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41734622280614296cb4e63ef864db695b64be00ae7689c6babc421fca46b0f2",
  "verification": {
    "reference": "docs/verification/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8367bc8-ba79-594c-d62f-82250b661cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem faster_exponential_comparison {z : ℂ} (hz : z ≠ 0) (k : ℕ) {beta : ℝ}
    (hgap : beta < z.re) :
    Tendsto (fun t : ℝ ↦ ‖primitive z k (t : ℂ)‖ / Real.exp (beta * t)) atTop atTop := by
  have hp : 0 < ‖z‖⁻¹ ^ k := pow_pos (inv_pos.mpr (norm_pos_iff.mpr hz)) _
  have ht : Tendsto (fun t : ℝ ↦ (z.re - beta) * t) atTop atTop :=
    tendsto_id.const_mul_atTop (sub_pos.mpr hgap)
  have he := (Real.tendsto_exp_atTop.comp ht).const_mul_atTop hp
  apply he.congr
  intro t
  rw [exact_real_time_norm, mul_div_assoc, ← Real.exp_sub]
  dsimp only [Function.comp_def]
  rw [sub_mul]

/-- A fixed-order primitive cannot satisfy a globally smaller exponential cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0216c0b6e5bbdddc1f34e6a45d5647e28d359ac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
