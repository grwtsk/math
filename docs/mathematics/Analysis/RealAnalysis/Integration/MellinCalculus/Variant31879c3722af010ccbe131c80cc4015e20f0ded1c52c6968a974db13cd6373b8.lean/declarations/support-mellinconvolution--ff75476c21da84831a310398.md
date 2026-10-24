# support_MellinConvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2d6cee5-5ecf-90d1-f9d5-8f731376faa7",
  "kind": "lemma",
  "lexical_name": "support_MellinConvolution",
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
  "slug": "support-mellinconvolution--ff75476c21da84831a310398",
  "source": {
    "blob": "78046834c8d8ce98551fa620f4fcf0eefe224439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 357,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff75476c21da84831a3103983bfa3d59cf4759bf086a1bac317b1ccba4fe6d09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2d6cee5-5ecf-90d1-f9d5-8f731376faa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma support_MellinConvolution (f g : ℝ → 𝕂) :
    (MellinConvolution f g).support ⊆ f.support * g.support :=
  support_MellinConvolution_subsets subset_rfl subset_rfl

blueprint_comment /--
The Mellin transform of a convolution is the product of the Mellin transforms.
-/
set_option backward.isDefEq.respectTransparency false in
@[blueprint
  (title := "MellinConvolutionTransform")
  (statement := /--
  Let $f$ and $g$ be functions from $\mathbb{R}_{>0}$ to $\mathbb{C}$ such that
  \begin{equation}
    (x,y)\mapsto f(y)\frac{g(x/y)}yx^{s-1}
    \label{eq:assm_integrable_Mconv}
  \end{equation}
  is absolutely integrable on $[0,\infty)^2$.
  Then
  $$\mathcal{M}(f\ast g)(s) = \mathcal{M}(f)(s)\mathcal{M}(g)(s).$$
  -/)
  (proof := /--
  By Definitions \ref{MellinTransform} and \ref{MellinConvolution}
  $$
    \mathcal M(f\ast g)(s)=
    \int_0^\infty \int_0^\infty f(y)g(x/y)x^{s-1}\frac{dy}ydx
  $$
  By (\ref{eq:assm_integrable_Mconv}) and Fubini's theorem,
  $$
    \mathcal M(f\ast g)(s)=
    \int_0^\infty \int_0^\infty f(y)g(x/y)x^{s-1}dx\frac{dy}y
  $$
  in which we change variables from $x$ to $z=x/y$:
  $$
    \mathcal M(f\ast g)(s)=
    \int_0^\infty \int_0^\infty f(y)g(z)y^{s-1}z^{s-1}dzdy
  $$
  which, by Definition \ref{MellinTransform}, is
  $$
    \mathcal M(f\ast g)(s)=
    \mathcal M(f)(s)\mathcal M(g)(s)
    .
  $$
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant31879c3722af010ccbe131c80cc4015e20f0ded1c52c6968a974db13cd6373b8.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78046834c8d8ce98551fa620f4fcf0eefe224439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
