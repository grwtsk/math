# lt_radius_of_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5fae1c1-c6c4-307d-2259-88699144c0e8",
  "kind": "theorem",
  "lexical_name": "lt_radius_of_isBigO",
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
  "slug": "lt-radius-of-isbigo--37902abf491df48b3f552ed7",
  "source": {
    "blob": "57ccc08fe35d34400d35e11fbe19643732a90dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 217,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37902abf491df48b3f552ed7b86bea8a8c65add05dc7c1358cb819e5d13c4359",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5fae1c1-c6c4-307d-2259-88699144c0e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_radius_of_isBigO (h₀ : r ≠ 0) {a : ℝ} (ha : a ∈ Ioo (-1 : ℝ) 1)
    (hp : (fun n => ‖p n‖ * (r : ℝ) ^ n) =O[atTop] (a ^ ·)) : ↑r < p.radius := by
  have := ((TFAE_exists_lt_isLittleO_pow (fun n => ‖p n‖ * (r : ℝ) ^ n) 1).out 2 5)
  rcases this.mp ⟨a, ha, hp⟩ with ⟨a, ha, C, hC, hp⟩
  rw [← pos_iff_ne_zero, ← NNReal.coe_pos] at h₀
  lift a to ℝ≥0 using ha.1.le
  have : (r : ℝ) < r / a := by
    simpa only [div_one] using (div_lt_div_iff_of_pos_left h₀ zero_lt_one ha.1).2 ha.2
  norm_cast at this
  rw [← ENNReal.coe_lt_coe] at this
  refine this.trans_le (p.le_radius_of_bound C fun n => ?_)
  rw [NNReal.coe_div, div_pow, ← mul_div_assoc, div_le_iff₀ (pow_pos ha.1 n)]
  exact (le_abs_self _).trans (hp n)

/-- For `r` strictly smaller than the radius of `p`, then `‖pₙ‖ rⁿ` is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1830a515760f7e205786363317724ce1b6c2c10bd4b1d10dd88a369c64a2b65f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ccc08fe35d34400d35e11fbe19643732a90dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
