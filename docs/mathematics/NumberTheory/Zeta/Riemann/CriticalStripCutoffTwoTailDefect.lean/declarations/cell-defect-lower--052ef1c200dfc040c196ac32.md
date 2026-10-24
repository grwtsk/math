# cell_defect_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:315f85c3-a848-3f54-e236-4184112884f7",
  "kind": "lemma",
  "lexical_name": "cell_defect_lower",
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
  "slug": "cell-defect-lower--052ef1c200dfc040c196ac32",
  "source": {
    "blob": "bbbc590fca211c6b2b543b5ee06ce0a6f640eb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052ef1c200dfc040c196ac323262a05e4614a9f2daba608e193938d68e868093",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:315f85c3-a848-3f54-e236-4184112884f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cell_defect_lower {s : ℂ} (hs : 0 < s.re) (hx1 : s.re ≤ 1) :
    (2 : ℝ) ^ (1 - s.re) / 1408 ≤ ∫ t : ℝ in (2 : ℝ)..3, defect s t := by
  have heq : (∑ i : Fin 16, ∫ t : ℝ in node i.val..node (i.val + 1), defect s t) =
      ∫ t : ℝ in (2 : ℝ)..3, defect s t := by
    rw [Fin.sum_univ_eq_sum_range]
    have h := intervalIntegral.sum_integral_adjacent_intervals (a := node) (n := 16)
      (fun k _ => real_interval_of_tail (defect_integrable hs)
        (by linarith [(node_order k).1]) (node_order k).2)
    simpa only [node, Nat.cast_zero, zero_div, add_zero, Nat.cast_ofNat,
      show (2 + (16 : ℝ) / 16) = 3 by norm_num] using h
  calc
    _ ≤ (2 : ℝ) ^ (1 - s.re) * ∑ i : Fin 16, mass i := by
      simpa only [mul_one_div] using mul_le_mul_of_nonneg_left total_mass
        (Real.rpow_nonneg (by norm_num : (0 : ℝ) ≤ 2) _)
    _ = ∑ i : Fin 16, (2 : ℝ) ^ (1 - s.re) * mass i := Finset.mul_sum _ _ _
    _ ≤ _ := Finset.sum_le_sum (fun i _ => subcell_integral hs hx1 i)
    _ = _ := heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbc590fca211c6b2b543b5ee06ce0a6f640eb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
