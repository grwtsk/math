# norm_lineDeriv_le_of_lip'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e235622-a081-e5a8-b1f7-ab2e6c2c2f08",
  "kind": "theorem",
  "lexical_name": "norm_lineDeriv_le_of_lip'",
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
  "slug": "norm-linederiv-le-of-lip--40136846740f45009310b95e",
  "source": {
    "blob": "845c3c205f16025c33acfe87249671b74ee6b849",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 473,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant44e4b9e2a15e3caee887db45de4b2db8c0d80154e58d7d8901a164c2922fbd03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40136846740f45009310b95e032d9a3d274b08d57070541fa9f53aea3a2996ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant44e4b9e2a15e3caee887db45de4b2db8c0d80154e58d7d8901a164c2922fbd03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e235622-a081-e5a8-b1f7-ab2e6c2c2f08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_lineDeriv_le_of_lip' {f : E → F} {x₀ : E}
    {C : ℝ} (hC₀ : 0 ≤ C) (hlip : ∀ᶠ x in 𝓝 x₀, ‖f x - f x₀‖ ≤ C * ‖x - x₀‖) :
    ‖lineDeriv 𝕜 f x₀ v‖ ≤ C * ‖v‖ := by
  apply norm_deriv_le_of_lip' (by positivity)
  have A : Continuous (fun (t : 𝕜) ↦ x₀ + t • v) := by fun_prop
  have : ∀ᶠ x in 𝓝 (x₀ + (0 : 𝕜) • v), ‖f x - f x₀‖ ≤ C * ‖x - x₀‖ := by simpa using hlip
  filter_upwards [(A.continuousAt (x := 0)).preimage_mem_nhds this] with t ht
  simp only [preimage_ofPred_eq, add_sub_cancel_left, norm_smul, mem_ofPred_eq,
    mul_comm (‖t‖)] at ht
  simpa [mul_assoc] using ht

/-- Converse to the mean value inequality: if `f` is `C`-lipschitz on a neighborhood of `x₀`
then its line derivative at `x₀` in the direction `v` has norm bounded by `C * ‖v‖`.
Version using `lineDeriv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant44e4b9e2a15e3caee887db45de4b2db8c0d80154e58d7d8901a164c2922fbd03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant44e4b9e2a15e3caee887db45de4b2db8c0d80154e58d7d8901a164c2922fbd03.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `845c3c205f16025c33acfe87249671b74ee6b849` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
