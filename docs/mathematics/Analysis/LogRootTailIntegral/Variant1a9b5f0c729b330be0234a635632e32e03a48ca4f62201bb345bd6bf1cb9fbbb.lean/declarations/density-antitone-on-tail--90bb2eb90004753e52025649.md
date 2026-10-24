# density_antitone_on_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eb1ed56-229f-befa-c111-857bd6e31109",
  "kind": "theorem",
  "lexical_name": "density_antitone_on_tail",
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
  "slug": "density-antitone-on-tail--90bb2eb90004753e52025649",
  "source": {
    "blob": "89b90428ac6073cfc474fb0b513083476ace0a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 84,
    "path": "GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90bb2eb90004753e520256493942042546301cc25e7c06ee051cb8255d413785",
  "verification": {
    "reference": "docs/verification/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eb1ed56-229f-befa-c111-857bd6e31109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_antitone_on_tail : AntitoneOn density (Set.Ici (2 : ℝ)) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 2)
  · intro x hx
    exact (exact_density_derivative (by have := hx; change 2 ≤ x at hx; linarith)).continuousAt.continuousWithinAt
  · intro x hx
    have hx3 : 2 ≤ x := Set.mem_Ici.mp (interior_subset hx)
    exact (exact_density_derivative (by linarith)).differentiableAt.differentiableWithinAt
  · intro x hx
    have hx3 : 2 ≤ x := Set.mem_Ici.mp (interior_subset hx)
    rw [(exact_density_derivative (by linarith : 0 < x)).deriv]
    have hl0 : (2 / 3 : ℝ) < Real.log 2 := by linarith [Real.log_two_gt_d9]
    have hl : (2 / 3 : ℝ) < Real.log x :=
      hl0.trans_le (Real.log_le_log (by norm_num) hx3)
    apply div_nonpos_of_nonpos_of_nonneg (by linarith)
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LogRootTailIntegral/Variant1a9b5f0c729b330be0234a635632e32e03a48ca4f62201bb345bd6bf1cb9fbbb.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b90428ac6073cfc474fb0b513083476ace0a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
