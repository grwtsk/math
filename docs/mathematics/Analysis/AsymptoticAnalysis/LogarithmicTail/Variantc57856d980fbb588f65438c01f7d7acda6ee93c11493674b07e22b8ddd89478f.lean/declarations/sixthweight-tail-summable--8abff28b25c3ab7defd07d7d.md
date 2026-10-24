# sixthWeight_tail_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:394a77d2-e076-9a74-aabf-364ca3c5b6b5",
  "kind": "theorem",
  "lexical_name": "sixthWeight_tail_summable",
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
  "slug": "sixthweight-tail-summable--8abff28b25c3ab7defd07d7d",
  "source": {
    "blob": "587d6dbff1da35409b08610193d032cb6e8cddac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8abff28b25c3ab7defd07d7d37d1ed3359c64db9b9323a3d186cc55fc3c28d3b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:394a77d2-e076-9a74-aabf-364ca3c5b6b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sixthWeight_tail_summable (T : ℝ) (hT : 2 ≤ T) :
    Summable (fun o : HeightTail T => sixthWeight o.val) := by
  have hs : Summable (fun o : HeightTail T =>
      64*(1+‖shiftedValue o.val‖)^(-6:ℝ)) := by
    exact (ZeroShellCount.zero_summability.mul_left (64:ℝ)).subtype
      {o : ZeroOccurrence | T < |(shiftedValue o).im|}
  apply Summable.of_nonneg_of_le (fun o => by unfold sixthWeight; positivity) ?_ hs
  intro o
  have ho : T < |(shiftedValue o.val).im| := o.property
  have hy : 0 < |(shiftedValue o.val).im| := by linarith
  have hn := Complex.norm_le_abs_re_add_abs_im (shiftedValue o.val)
  have hr : |(shiftedValue o.val).re| ≤ (1/2:ℝ) :=
    abs_le.mpr ⟨(shiftedValue_strip o.val).1.le, (shiftedValue_strip o.val).2.le⟩
  have hh : 1+‖shiftedValue o.val‖ ≤ 2*|(shiftedValue o.val).im| := by
    linarith
  have hw := pow_le_pow_left₀ (by positivity : (0:ℝ)≤1+‖shiftedValue o.val‖) hh 6
  change 1/|(shiftedValue o.val).im|^6 ≤ 64*(1+‖shiftedValue o.val‖)^(-6:ℝ)
  rw [Real.rpow_neg (by positivity), Real.rpow_ofNat]
  rw [← div_eq_mul_inv]
  apply (div_le_div_iff₀ (by positivity) (by positivity)).2
  nlinarith [show (2*|(shiftedValue o.val).im|)^6 = 64*|(shiftedValue o.val).im|^6 by ring]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicTail/Variantc57856d980fbb588f65438c01f7d7acda6ee93c11493674b07e22b8ddd89478f.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587d6dbff1da35409b08610193d032cb6e8cddac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
