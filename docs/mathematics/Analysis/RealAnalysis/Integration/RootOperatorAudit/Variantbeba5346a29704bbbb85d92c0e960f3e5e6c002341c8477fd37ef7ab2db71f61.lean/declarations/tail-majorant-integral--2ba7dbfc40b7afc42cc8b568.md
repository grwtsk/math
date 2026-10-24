# tail_majorant_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c62afe42-8d18-f7aa-a3d8-1d6d13da4b36",
  "kind": "theorem",
  "lexical_name": "tail_majorant_integral",
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
  "slug": "tail-majorant-integral--2ba7dbfc40b7afc42cc8b568",
  "source": {
    "blob": "f1698e38e0c95e188893914c51ecb49291de86ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 351,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ba7dbfc40b7afc42cc8b568e9ae713bd7182a91753e568fe8bb9322547ea981",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c62afe42-8d18-f7aa-a3d8-1d6d13da4b36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_majorant_integral (N : ℝ) :
    (∫ t : ℝ in Ioi N, Real.exp ((1 - t) / 2) * derivativeBudget) =
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := by
  have he (t : ℝ) : Real.exp ((1 - t) / 2) * derivativeBudget =
      (Real.exp (1 / 2) * derivativeBudget) * Real.exp (-(1 / 2) * t) := by
    rw [show (1 - t) / 2 = 1 / 2 + -(1 / 2) * t by ring, Real.exp_add]
    ring
  simp_rw [he]
  rw [integral_const_mul, integral_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) N]
  rw [show (1 - N) / 2 = 1 / 2 + -(1 / 2) * N by ring, Real.exp_add]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1698e38e0c95e188893914c51ecb49291de86ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
