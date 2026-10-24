# Unitization.norm_splitMul_snd_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cf5079c-dd0c-8a67-9429-2efa9f3b71b5",
  "kind": "theorem",
  "lexical_name": "Unitization.norm_splitMul_snd_sq",
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
  "slug": "unitization-norm-splitmul-snd-sq--504cf0b9d840b2decc015275",
  "source": {
    "blob": "b141a2635b3980c3c076c2a01de66f8d90f0a9cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 96,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:504cf0b9d840b2decc0152754a69ab34dc3f22ead81371c05b96c7c03ce9d02e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cf5079c-dd0c-8a67-9429-2efa9f3b71b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Unitization.norm_splitMul_snd_sq (x : Unitization 𝕜 E) :
    ‖(Unitization.splitMul 𝕜 E x).snd‖ ^ 2 ≤ ‖(Unitization.splitMul 𝕜 E (star x * x)).snd‖ := by
  /- The key idea is that we can use `sSup_unitClosedBall_eq_norm` to make this about
  applying this linear map to elements of norm at most one. There is a bit of `sqrt` and `sq`
  shuffling that needs to occur, which is primarily just an annoyance. -/
  refine (Real.le_sqrt (norm_nonneg _) (norm_nonneg _)).mp ?_
  simp only [Unitization.splitMul_apply]
  rw [← sSup_unitClosedBall_eq_norm]
  refine csSup_le ((Metric.nonempty_closedBall.2 zero_le_one).image _) ?_
  rintro - ⟨b, hb, rfl⟩
  simp only
  -- rewrite to a more convenient form; this is where we use the C⋆-property
  rw [← Real.sqrt_sq (norm_nonneg _), Real.sqrt_le_sqrt_iff (norm_nonneg _), sq,
    ← CStarRing.norm_star_mul_self, add_apply, star_add, mul_apply',
    Algebra.algebraMap_eq_smul_one, smul_apply,
    one_apply_eq_self, star_mul, star_smul, add_mul, smul_mul_assoc, ← mul_smul_comm,
    mul_assoc, ← mul_add, ← sSup_unitClosedBall_eq_norm]
  refine (norm_mul_le _ _).trans ?_
  calc
    _ ≤ ‖star x.fst • (x.fst • b + x.snd * b) + star x.snd * (x.fst • b + x.snd * b)‖ := by
      nth_rewrite 2 [← one_mul ‖_ + _‖]
      gcongr
      exact (norm_star b).symm ▸ mem_closedBall_zero_iff.1 hb
    _ ≤ sSup (_ '' Metric.closedBall 0 1) := le_csSup ?_ ⟨b, hb, ?_⟩
  -- now we just check the side conditions for `le_csSup`. There is nothing of interest here.
  · refine ⟨‖(star x * x).fst‖ + ‖(star x * x).snd‖, ?_⟩
    rintro _ ⟨y, hy, rfl⟩
    refine (norm_add_le _ _).trans ?_
    gcongr
    · rw [Algebra.algebraMap_eq_smul_one]
      refine (norm_smul _ _).trans_le ?_
      simpa only [mul_one] using!
        mul_le_mul_of_nonneg_left (mem_closedBall_zero_iff.1 hy) (norm_nonneg (star x * x).fst)
    · exact (unit_le_opNorm _ y <| mem_closedBall_zero_iff.1 hy).trans (opNorm_mul_apply_le _ _ _)
  · simp only [add_apply, mul_apply', Unitization.snd_star, Unitization.snd_mul,
      Unitization.fst_mul, Unitization.fst_star, Algebra.algebraMap_eq_smul_one, smul_apply,
      one_apply_eq_self, smul_add, mul_add, add_mul]
    simp only [smul_smul, smul_mul_assoc, ← add_assoc, ← mul_assoc, mul_smul_comm]

variable {𝕜}
variable [CStarRing 𝕜]

/-- The norm on `Unitization 𝕜 E` satisfies the C⋆-property -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variantdfe102fb786577dd3118ed6d15a86d80a140f132ccbdf15900b68561197efd9c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b141a2635b3980c3c076c2a01de66f8d90f0a9cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
