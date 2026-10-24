# background_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b8e742d-0ccd-8f29-5071-133a00647726",
  "kind": "theorem",
  "lexical_name": "background_at_one",
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
  "slug": "background-at-one--7c13cbd541738169daa6f0c1",
  "source": {
    "blob": "cb55a15888cb0a1340f5afb86b105f510d78ac7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 127,
    "path": "GRWTSK/Analysis/MellinTransform/DyadicIntegralSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c13cbd541738169daa6f0c139a8d1dcdea46dd34c2edbe0072a71045df93027",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicIntegralSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b8e742d-0ccd-8f29-5071-133a00647726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem background_at_one (j : ℕ) : background j 1 = (Real.log 2 : ℂ) := by
  have ha : (0:ℝ) < edge j := by exact_mod_cast edge_pos j
  have hab : (edge j : ℝ) ≤ edge (j+1) := by
    exact_mod_cast (edge_strictMono (Nat.lt_succ_self j)).le
  have hd (u : ℝ) (hu : u ∈ Icc (edge j : ℝ) (edge (j+1) : ℝ)) :
      HasDerivAt (fun v : ℝ => (Real.log v : ℂ)) (power u (-1)) u := by
    have hu0 : 0 < u := ha.trans_le hu.1
    have hp : power u (-1) = (u : ℂ)⁻¹ := by
      calc
        power u (-1) = power u 0/(u:ℂ) := by
          simpa using (power_div_coordinate hu0 (0:ℂ)).symm
        _ = (u:ℂ)⁻¹ := by rw [power_zero]; simp
    simpa [hp] using (Real.hasDerivAt_log hu0.ne').ofReal_comp
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u hu => hd u (by simpa [uIcc_of_le hab] using hu))
    (power_integrable ha hab (-1))
  have hlog : Real.log (edge (j+1) : ℝ)-Real.log (edge j : ℝ) = Real.log 2 := by
    rw [edge_succ]
    push_cast
    rw [Real.log_mul (by norm_num) ha.ne']
    ring
  change (∫ u in (edge j : ℝ)..(edge (j+1) : ℝ), power u (-1)) = _
  calc
    _ = (Real.log (edge (j+1) : ℝ) : ℂ) - (Real.log (edge j : ℝ) : ℂ) := h
    _ = (Real.log 2 : ℂ) := by rw [← Complex.ofReal_sub, hlog]

end GRWTSK.Analysis.MellinTransform.DyadicIntegralSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicIntegralSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/DyadicIntegralSeries.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb55a15888cb0a1340f5afb86b105f510d78ac7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
