# add_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58b97993-504f-7824-7d23-d25396f8c1c9",
  "kind": "lemma",
  "lexical_name": "add_comp",
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
  "slug": "add-comp--ddaaf79aa51b0f721586b479",
  "source": {
    "blob": "f30fb70372fb70e2c30f4919426178cc4ee9c7ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 380,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddaaf79aa51b0f721586b479a15ae0d3bb298ac0258beecfc4846e2afec2cc7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58b97993-504f-7824-7d23-d25396f8c1c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_comp {η : Kernel Ω Ω''} [IsZeroOrMarkovKernel η]
    (hX : HasSubgaussianMGF X c κ ν) (hY : HasSubgaussianMGF Y cY η (κ ∘ₘ ν)) :
    HasSubgaussianMGF (fun p ↦ X p.1 + Y p.2) (c + cY) (κ ⊗ₖ prodMkLeft Ω' η) ν :=
  hX.add_compProd hY.prodMkLeft_compProd

end Add

end Kernel.HasSubgaussianMGF

end Kernel

section Conditional

/-! ### Conditionally sub-Gaussian moment generating function -/

variable {Ω : Type*} {m mΩ : MeasurableSpace Ω} {hm : m ≤ mΩ} [StandardBorelSpace Ω]
  {μ : Measure Ω} [IsFiniteMeasure μ] {X : Ω → ℝ} {c : ℝ≥0}

variable (m) (hm) in
/-- A random variable `X` has a conditionally sub-Gaussian moment generating function
with parameter `c` with respect to a sigma-algebra `m` and a measure `μ` if for all `t : ℝ`,
`exp (t * X)` is `μ`-integrable and the moment generating function of `X` conditioned on `m` is
almost surely bounded by `exp (c * t ^ 2 / 2)` for all `t : ℝ`.
This implies in particular that `X` has expectation 0.

The actual definition uses `Kernel.HasSubgaussianMGF`: `HasCondSubgaussianMGF` is defined as
sub-Gaussian with respect to the conditional expectation kernel for `m` and the restriction of `μ`
to the sigma-algebra `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f30fb70372fb70e2c30f4919426178cc4ee9c7ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
