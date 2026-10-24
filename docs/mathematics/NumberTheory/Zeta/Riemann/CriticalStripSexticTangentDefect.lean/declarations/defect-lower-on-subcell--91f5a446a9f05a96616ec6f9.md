# defect_lower_on_subcell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b3f3e39-ead7-8aff-3c76-91368a74c6e3",
  "kind": "lemma",
  "lexical_name": "defect_lower_on_subcell",
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
  "slug": "defect-lower-on-subcell--91f5a446a9f05a96616ec6f9",
  "source": {
    "blob": "3da1085b5b42212c5ed5cd2f7aff14926b748e0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91f5a446a9f05a96616ec6f9743ecd4755fab3f0081a7c7300451d549f832cba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b3f3e39-ead7-8aff-3c76-91368a74c6e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma defect_lower_on_subcell {s : ℂ} (hx1 : s.re ≤ 1) (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    lower0 i t + (1-s.re)*lower1 i t ≤ defect s t := by
  have htlo : 1 ≤ t := (node_order i.val).1.trans ht
  have ht0 : 0 < t := zero_lt_one.trans_le htlo
  have hc : 0 < center i := by
    unfold center
    linarith [(node_order i.val).1, (node_order (i.val+1)).1]
  have hv : 0 ≤ 16*(t-1)-(i.val : ℝ) := by dsimp [node] at ht; linarith
  have hv1 : 16*(t-1)-(i.val : ℝ) ≤ 1 := by
    dsimp [node] at ht1; push_cast at ht1; linarith
  have hd := density_nonneg i hv hv1
  have hk := kernel_density_bound i ht ht1
  have hweight := mul_le_mul_of_nonneg_left (variable_weight_lower hx1 ht0) hd
  have hw0 := tangent7_le hc ht0
  have hw1 := mul_le_mul_of_nonneg_left (tangent8_le hc ht0)
    (mul_nonneg (sub_nonneg.mpr hx1) (sub_nonneg.mpr htlo))
  have hw := mul_le_mul_of_nonneg_left (add_le_add hw0 hw1) hd
  have hnorm := mul_le_mul_of_nonneg_right hk (Real.rpow_nonneg ht0.le (-(s.re+6)))
  unfold lower0 lower1 defect
  rw [integrand_norm ht0]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da1085b5b42212c5ed5cd2f7aff14926b748e0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
