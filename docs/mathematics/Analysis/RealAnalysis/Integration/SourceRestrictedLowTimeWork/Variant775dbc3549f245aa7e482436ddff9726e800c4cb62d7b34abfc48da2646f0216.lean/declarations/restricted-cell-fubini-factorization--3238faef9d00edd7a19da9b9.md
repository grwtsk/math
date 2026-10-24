# restricted_cell_fubini_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:855c8fd2-d587-b6f1-4fcd-f915270c6906",
  "kind": "theorem",
  "lexical_name": "restricted_cell_fubini_factorization",
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
  "slug": "restricted-cell-fubini-factorization--3238faef9d00edd7a19da9b9",
  "source": {
    "blob": "9c5690d5b9e64426b793e2ad499cd03e175d97a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3238faef9d00edd7a19da9b9461224ca7929b9ae489894b987476333adb424a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:855c8fd2-d587-b6f1-4fcd-f915270c6906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restricted_cell_fubini_factorization
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) :
    (∫ v in S, timeRow r l b v * cellRow r k v) =
      ∫ t in l..b, ∫ u in k..(k + 1), ∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  let μv := volume.restrict S
  have hf := actual39_cell_kernel_restricted_integrable r hc hlb hk hs S
  have hout := integral_prod
    (fun z : ℝ × ℝ => ∫ v, sourceCellKernel r (z, v) ∂μv) hf.integral_prod_left
  have hswap := integral_integral_swap
    (f := fun z : ℝ × ℝ => fun v : ℝ => sourceCellKernel r (z, v)) hf
  symm
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  change (∫ t, (∫ u, (∫ v, sourceCellKernel r ((t, u), v) ∂μv) ∂μu) ∂μt) =
    ∫ v, (∫ t, errorWeight t * r (v - t) ∂μt) *
      (∫ u, r (v + Real.log u) / (u * Real.sqrt u) ∂μu) ∂μv
  rw [← hout, hswap]
  apply integral_congr_ae
  filter_upwards [] with v
  exact integral_prod_mul
    (fun t : ℝ => errorWeight t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant775dbc3549f245aa7e482436ddff9726e800c4cb62d7b34abfc48da2646f0216.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5690d5b9e64426b793e2ad499cd03e175d97a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
