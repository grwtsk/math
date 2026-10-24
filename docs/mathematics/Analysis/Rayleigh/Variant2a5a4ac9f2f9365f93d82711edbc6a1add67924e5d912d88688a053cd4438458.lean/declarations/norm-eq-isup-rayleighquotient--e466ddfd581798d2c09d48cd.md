# norm_eq_iSup_rayleighQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:251eac57-f69a-854c-039c-ea2d631ddc43",
  "kind": "theorem",
  "lexical_name": "norm_eq_iSup_rayleighQuotient",
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
  "slug": "norm-eq-isup-rayleighquotient--e466ddfd581798d2c09d48cd",
  "source": {
    "blob": "66e8428e2794a380cd531c738c0a289a4c971bf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 128,
    "path": "GRWTSK/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e466ddfd581798d2c09d48cd552bcff30fbb3ee8388f1d0e2fdb405f0969f9a4",
  "verification": {
    "reference": "docs/verification/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:251eac57-f69a-854c-039c-ea2d631ddc43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_iSup_rayleighQuotient (hT : T.IsSymmetric) :
    ‖T‖ = ⨆ x, |T.rayleighQuotient x| := by
  set M := ⨆ x, |T.rayleighQuotient x|
  have nonneg : 0 ≤ M := le_ciSup_of_le T.bddAbove_rayleighQuotient 0 (abs_nonneg _)
  have hM x : |re ⟪T x, x⟫| ≤ M * ‖x‖ ^ 2 := by
    have hM : |T.rayleighQuotient x| ≤ M := le_ciSup T.bddAbove_rayleighQuotient x
    by_cases hx : 0 < ‖x‖ ^ 2
    · rwa [rayleighQuotient, abs_div, abs_sq, reApplyInnerSelf, div_le_iff₀ hx] at hM
    · simp_all
  refine le_antisymm ?_ (ciSup_le T.rayleighQuotient_le_norm)
  refine opNorm_le_of_re_inner_le nonneg fun x y hx hy ↦ ?_
  transitivity M * (‖x + y‖ ^ 2 + ‖x - y‖ ^ 2) / 4
  · have key := congrArg re (add_conj ⟪T x, y⟫)
    rw [map_add, conj_inner_symm, ← coe_coe, ← hT, coe_coe, re_mul_ofReal, ofNat_re] at key
    grind [inner_add_left, inner_add_right, inner_sub_left, inner_sub_right]
  · rw [parallelogram_law_with_norm 𝕜 x y, hx, hy]
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e8428e2794a380cd531c738c0a289a4c971bf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
