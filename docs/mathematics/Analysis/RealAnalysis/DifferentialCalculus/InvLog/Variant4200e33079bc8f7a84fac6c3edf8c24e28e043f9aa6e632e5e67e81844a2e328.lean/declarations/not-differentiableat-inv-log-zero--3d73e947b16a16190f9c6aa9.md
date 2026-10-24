# not_differentiableAt_inv_log_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed01ce74-a34c-8412-d48d-4946cf5b53fc",
  "kind": "lemma",
  "lexical_name": "not_differentiableAt_inv_log_zero",
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
  "slug": "not-differentiableat-inv-log-zero--3d73e947b16a16190f9c6aa9",
  "source": {
    "blob": "09b53ea2bc8614a4b821513b01889248b2017f34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d73e947b16a16190f9c6aa90e76e348efa8710970c1156eb4bf4ba91e8b9075",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed01ce74-a34c-8412-d48d-4946cf5b53fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_differentiableAt_inv_log_zero : ¬ DifferentiableAt ℝ (fun x ↦ (log x)⁻¹) 0 := by
  simp only [← hasDerivAt_deriv_iff, hasDerivAt_iff_tendsto_slope_zero, zero_add, log_zero,
    inv_zero, sub_zero, smul_eq_mul, ← mul_inv, mul_comm _ (log _)]
  refine fun H ↦ (tendsto_nhdsWithin_mono_left (by grind : Set.Iio (0 : ℝ) ⊆ _) H).not_tendsto
    (by simp) (tendsto_inv_nhdsGT_zero.comp ?_)
  refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
    tendsto_log_mul_self_nhdsLT_zero ?_
  simp only [← nhdsWithin_Ioo_eq_nhdsLT neg_one_lt_zero, Set.mem_Ioi]
  refine eventually_nhdsWithin_of_forall fun x ⟨hx₁, hx₂⟩ ↦ mul_pos_of_neg_of_neg ?_ hx₂
  apply log_neg_eq_log x ▸ log_neg <;> grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b53ea2bc8614a4b821513b01889248b2017f34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
