# contDiff_norm_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ed51cec2ff41e1670fe752f784cf3e02ffb898",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98350a92-3a36-b363-0297-30b1ad4d1c5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1974f4fb-b3bb-1c8f-1944-bbeb9e3328dd",
  "kind": "theorem",
  "lexical_name": "contDiff_norm_rpow",
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
  "slug": "contdiff-norm-rpow--296d9ae511f185ce426dba34",
  "source": {
    "blob": "41ed51cec2ff41e1670fe752f784cf3e02ffb898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:296d9ae511f185ce426dba348bc9c7749cbb574bd7f6eafe9360c9cd1639a9df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1974f4fb-b3bb-1c8f-1944-bbeb9e3328dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiff_norm_rpow {p : ℝ} (hp : 1 < p) : ContDiff ℝ 1 (fun x : E ↦ ‖x‖ ^ p) := by
  rw [contDiff_one_iff_fderiv]
  refine ⟨fun x ↦ hasFDerivAt_norm_rpow x hp |>.differentiableAt, ?_⟩
  simp_rw [continuous_iff_continuousAt]
  intro x
  by_cases hx : x = 0
  · simp_rw [hx, ContinuousAt, fderiv_norm_rpow (0 : E) hp, norm_zero, map_zero, smul_zero]
    rw [tendsto_zero_iff_norm_tendsto_zero]
    refine tendsto_of_tendsto_of_tendsto_of_le_of_le (tendsto_const_nhds) ?_
      (fun _ ↦ norm_nonneg _) (fun _ ↦ norm_fderiv_norm_id_rpow _ hp |>.le)
    suffices ContinuousAt (fun x : E ↦ p * ‖x‖ ^ (p - 1)) 0 by
      simpa [ContinuousAt, sub_ne_zero_of_ne hp.ne'] using this
    fun_prop (discharger := simp [hp.le])
  · simp_rw [funext fun x ↦ fderiv_norm_rpow (E := E) (x := x) hp]
    fun_prop (discharger := simp [hx])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ed51cec2ff41e1670fe752f784cf3e02ffb898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
