# residual_upper_of_joint_full_block_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1723e1f-6f28-ebe8-bf0c-655093d92c02",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_joint_full_block_at_radius",
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
  "slug": "residual-upper-of-joint-full-block-at-radius--11a9ca10bf6ed33fbe70c2ca",
  "source": {
    "blob": "117f2b48d2a8e0270ee9588f70c190ba6a661ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 264,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11a9ca10bf6ed33fbe70c2ca0d33b2b88f6ec2d51ebdf228069c9e6e8641e9d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1723e1f-6f28-ebe8-bf0c-655093d92c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_joint_full_block_at_radius (R A D : ℝ) (hR : 91 ≤ R)
    (hRA : R ≤ A)
    (hjoint : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    mertensResidual A ≤ D + 85760 / R ^ 3 := by
  have hR0 : 0 < R := by linarith
  have hp : R ^ 3 ≤ A ^ 3 := pow_le_pow_left₀ hR0.le hRA 3
  have he : (85760 : ℝ) / A ^ 3 ≤ 85760 / R ^ 3 :=
    div_le_div_of_nonneg_left (by norm_num) (pow_pos hR0 3) hp
  exact (residual_upper_of_joint_full_block A D (hR.trans hRA) hjoint).trans
    (add_le_add_left he D)
end RH16WholeCubic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117f2b48d2a8e0270ee9588f70c190ba6a661ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
