# weighted_deriv_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1495efbee543fce6d2fa6c22173b61cd749e0ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88150e9d-247e-29b2-9496-25a0578b1587",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e57ec6a-f840-269f-07f6-520fb665641c",
  "kind": "theorem",
  "lexical_name": "weighted_deriv_integral",
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
  "slug": "weighted-deriv-integral--09076eb58f1b26f5a10932b9",
  "source": {
    "blob": "b1495efbee543fce6d2fa6c22173b61cd749e0ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09076eb58f1b26f5a10932b9df220a6dc33e6e2c785abc447538f529131ba0db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e57ec6a-f840-269f-07f6-520fb665641c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_deriv_integral
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    {t : ℝ} (ht : 0 ≤ t)
    (hi : IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    (∫ u in Ici t, deriv thetaPhi u * (u - t)) = -thetaTail 1 t := by
  have hp := thetaPhi_integrableOn ht
  have hderiv (u : ℝ) (hu : u ∈ Ici t) :
      HasDerivAt (fun u => thetaPhi u * (u - t))
        (deriv thetaPhi u * (u - t) + thetaPhi u) u := by
    convert! (hd u (ht.trans hu)).hasDerivAt.mul ((hasDerivAt_id u).sub_const t) using 1
    simp
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto' hderiv
    ((hi.add hp).mono_set Ioi_subset_Ici_self) (boundary_sub t ht)
  rw [← integral_Ici_eq_integral_Ioi] at hh
  rw [integral_add hi hp] at hh
  have ht1 : thetaTail 1 t = ∫ u in Ici t, thetaPhi u := by simp [thetaTail]
  rw [ht1]
  simp only [sub_self, mul_zero] at hh
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variantf48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1495efbee543fce6d2fa6c22173b61cd749e0ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
