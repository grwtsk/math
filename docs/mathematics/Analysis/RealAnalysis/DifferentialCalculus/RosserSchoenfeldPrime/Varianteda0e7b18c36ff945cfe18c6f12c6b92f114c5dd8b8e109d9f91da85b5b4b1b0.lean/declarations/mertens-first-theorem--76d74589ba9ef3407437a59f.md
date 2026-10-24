# mertens_first_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d77c94-b698-f082-5bf4-ab8940cb31e8",
  "kind": "theorem",
  "lexical_name": "mertens_first_theorem",
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
  "slug": "mertens-first-theorem--76d74589ba9ef3407437a59f",
  "source": {
    "blob": "a5bbda4de7955429ab43110d8409ee59338e06c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 987,
    "line": 966,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76d74589ba9ef3407437a59f1edac68c9f3e1f722b796eabb929c34ea5c73159",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d77c94-b698-f082-5bf4-ab8940cb31e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 966–987.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_first_theorem : Filter.atTop.Tendsto (fun x : ℝ ↦
    ∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), Real.log p / p - log x) (𝓝 mertensConstant) := by
  have lem : ∀ᶠ x in atTop, mertensConstant + (θ x - x) / x
    + ∫ y in Set.Ioi x, - ((θ y - y) / (y ^ 2)) =
    ∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), Real.log p / p - log x := by
    filter_upwards [Ici_mem_atTop 2] with y hy
    rw [eq_420 hy, integral_neg]
    ring
  rw [← add_zero mertensConstant, ← add_zero (_ + _)]
  refine ((tendsto_const_nhds.add ?_).add
    (ioiIntegral_tendsto_zero 2 integrableOn_deriv_inv.1 tendsto_id)).congr' lem
  · obtain ⟨C, hC⟩ := pnt
    refine squeeze_zero_norm' (a := fun x => C / Real.log x ^ 2) ?_ ?_
    · filter_upwards [Ici_mem_atTop 2] with y hy
      simp only [norm_div, norm_of_nonneg (by grind : 0 ≤ y), norm_eq_abs]
      grw [hC.2 y hy]
      · rw [div_right_comm, mul_div_cancel_right₀ _ (by grind)]
      · grind
    · exact ((tendsto_pow_atTop (by linarith : 2 ≠ 0)).comp tendsto_log_atTop).const_div_atTop C

@[blueprint
  "rs-420"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean#L966).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bbda4de7955429ab43110d8409ee59338e06c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
