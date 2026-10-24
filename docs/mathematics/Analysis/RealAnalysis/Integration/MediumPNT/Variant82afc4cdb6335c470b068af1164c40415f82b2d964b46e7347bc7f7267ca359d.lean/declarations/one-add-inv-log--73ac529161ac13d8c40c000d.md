# one_add_inv_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e1f748-fc02-c26e-43a5-8688f2ff9be3",
  "kind": "lemma",
  "lexical_name": "one_add_inv_log",
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
  "slug": "one-add-inv-log--73ac529161ac13d8c40c000d",
  "source": {
    "blob": "3d1604bd6db34c61b3582358bc0ae0ae72c87a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2214,
    "line": 2174,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ac529161ac13d8c40c000d3dccb54a9efa9b4aa4a90d633674581e819df7e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e1f748-fc02-c26e-43a5-8688f2ff9be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2174–2214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_add_inv_log {X : ℝ} (X_ge : 3 ≤ X) : (1 + (Real.log X)⁻¹) < 2 := by
  rw[← one_add_one_eq_two]
  refine (add_lt_add_iff_left 1).mpr ?_
  refine inv_lt_one_of_one_lt₀ (logt_gt_one X_ge)

@[blueprint
  (title := "I2Bound")
  (statement := /--
  Assuming a bound of the form of Lemma \ref{LogDerivZetaBndUnif} we have that
  $$
  \left|I_{2}(\nu, \epsilon, X, T)\right| \ll \frac{X}{\epsilon T}
  .
  $$
  -/)
  (proof := /--
  Unfold the definitions and apply the triangle inequality.
  $$
  \left|I_{2}(\nu, \epsilon, X, T, \sigma_1)\right| =
  \left|\frac{1}{2\pi i} \int_{\sigma_1}^{\sigma_0}
  \left(\frac{-\zeta'}\zeta(\sigma - T i) \right) \cdot
  \mathcal M(\widetilde 1_\epsilon)(\sigma - T i) \cdot
  X^{\sigma - T i}
   \ d\sigma
  \right|
  $$
  $$\leq
  \frac{1}{2\pi}
  \int_{\sigma_1}^{\sigma_0}
  C \cdot \log T ^ 9
  \frac{C'}{\epsilon|\sigma - T i|^2}
  X^{\sigma_0}
   \ d\sigma
   \leq
  C'' \cdot \frac{X\log T^9}{\epsilon T^2}
  ,
  $$
  where we used Theorems \ref{MellinOfSmooth1b}, the hypothesised bound on zeta and the fact that
  $X^\sigma \le X^{\sigma_0} = X\cdot X^{1/\log X}=e \cdot X$.
  Since $T>3$, we have $\log T^9 \leq C''' T$.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant82afc4cdb6335c470b068af1164c40415f82b2d964b46e7347bc7f7267ca359d.lean#L2174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d1604bd6db34c61b3582358bc0ae0ae72c87a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
