# MeromorphicOnRectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ac7e64e400bd217390e501836e8b68b7ee167a6811203f974ece000b2732632",
  "kind": "class",
  "lexical_name": "MeromorphicOnRectangle",
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
  "slug": "meromorphiconrectangle--d5df4e0e446238fa9676ff86",
  "source": {
    "blob": "c7aca347a780c75605aad5315748d4099082f0e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 25,
    "path": "GRWTSK/Analysis/GeneralMeromorphic/Variant714d0f582077bac9bb043816e1188d2e5050bbec20af8783164442c5ec6cff4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5df4e0e446238fa9676ff86e11664049c0ea06a746b7a72d0513954dc422371",
  "verification": {
    "reference": "docs/verification/Analysis/GeneralMeromorphic/Variant714d0f582077bac9bb043816e1188d2e5050bbec20af8783164442c5ec6cff4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ac7e64e400bd217390e501836e8b68b7ee167a6811203f974ece000b2732632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MeromorphicOnRectangle (f : ℂ → ℂ) (poles : Finset ℂ) (z w : ℂ) : Prop where
  holomorphicOn : HolomorphicOn f ((Rectangle z w) ∩ polesᶜ)
  hasPoleAt : ∀ p ∈ poles, MeromorphicAt f p
  continuousOn : ContinuousOn f (RectangleBorder z w)

-- @[blueprint
--   (title := "Theorem about RectangleIntegralEqSumOfRectangles")
--   (statement := /--
--   If $f$ is meromorphic on a rectangle with corners $z$ and $w$,
--   then the rectangle integral of $f$ is equal to the sum of
--   sufficiently small rectangle integrals around each pole.
--   -/)]
-- theorem RectangleIntegralEqSumOfRectangles
--     (f : ℂ → ℂ) (poles : Finset ℂ) (z w : ℂ) [MeromorphicOnRectangle f poles z w] :
--     ∀ᶠ c in 𝓝[>](0:ℝ), RectangleIntegral f z w =
--       ∑ p in poles, RectangleIntegral f (p-(c+c*I)) (p+c+c*I) := by
--   sorry_using [MeromorphicOnRectangle, RectangleIntegral]

blueprint_comment /--
A meromorphic function has a pole of finite order.
\begin{definition}\label{PoleOrder}
If $f$ has a pole at $z_0$, then there is an integer $n$ such that
$$
\lim_{z\to z_0} (z-z_0)^n f(z) = c \neq 0.
$$
\end{definition}
-/

blueprint_comment /--
If a meromorphic function $f$ has a pole at $z_0$, then the residue of
$f$ at $z_0$ is the coefficient of $1/(z-z_0)$ in the Laurent series of
$f$ around $z_0$.
\begin{definition}\label{Residue}
If $f$ has a pole of order $n$ at $z_0$, then
$$
Res_{z_0} f =
  \lim_{z\to z_0}\frac1{(n-1)!}
    (\partial/\partial z)^{n-1}[(z-z_0)^{n-1}f(z)].
$$
\end{definition}
-/

blueprint_comment /--
We can evaluate a small integral around a pole by taking the residue.
-/
-- @[blueprint
--   (statement := /--
--     If $f$ has a pole at $z_0$, then every small enough rectangle
--     integral around $z_0$ is equal to $2\pi i Res_{z_0} f$.
--   -/)]]
-- theorem ResidueTheoremOnRectangle
--     (f : ℂ → ℂ) (z₀ : ℂ) (h : MeromorphicAt f z₀) :
--     ∀ᶠ c in 𝓝[>](0:ℝ),
--     RectangleIntegral f (z-(c+c*I)) (z+c+c*I) = 2*π*I* Res f z₀ := by
--   /--
--   The key is being able to integrate $1/z$ around a rectangle
--   with corners, say, $-1-i$ and $1+i$. The bottom is:
--   $$
--   \int_{-1-i}^{1-i} \frac1z dz
--   =
--   \int_{-1}^1 \frac1{x-i} dx,
--   $$
--   and the top is the negative of:
--   $$
--   \int_{-1+i}^{1+i} \frac1z dz
--   =
--   \int_{-1}^1 \frac1{x+i} dx.
--   $$
--   The two together add up to:
--   $$
--   \int_{-1}^1
--   \left(\frac1{x-i}-\frac1{x+i} \right)dx
--   =
--   2i\int_{-1}^1
--   \frac{1}{x^2+1}dx,
--   $$
--   which is the arctan at $1$ (namely $\pi/4$) minus that at $-1$.
--   In total, this contributes $\pi i$ to the integral.
--
--   The vertical sides are:
--   $$
--   \int_{1-i}^{1+i} \frac1z dz
--   =
--   i\int_{-1}^1 \frac1{1+iy} dy
--   $$
--   and the negative of
--   $$
--   \int_{-1-i}^{-1+i} \frac1z dz
--   =
--   i\int_{-1}^1 \frac1{-1+iy} dy.
--   $$
--   This difference comes out to:
--   $$
--   i\int_{-1}^1 \left(
--     \frac1{1+iy}-\frac1{-1+iy}\right) dy
--   =
--   i\int_{-1}^1 \left(\frac{-2}{-1-y^2}\right) dy,
--   $$
--   which contributes another factor of $\pi i$.
--   (Each of the vertical/horizontal sides contributes
--   half of the winding.)
--   -/
--   sorry_using [PoleOrder, Residue, RectangleIntegral, RectangleIntegralEqSumOfRectangles]

blueprint_comment /--
If a function $f$ is meromorphic at $z_0$ with a pole of order $n$, then
the residue at $z_0$ of the logarithmic derivative is $-n$ exactly.
-/
-- @[blueprint
--   (statement := /--
--   If $f$ has a pole of order $n$ at $z_0$, then
--   $$
--   Res_{z_0} \frac{f'}f = -n.
--   -/)]
-- theorem ResidueOfLogDerivative (f : ℂ → ℂ) (z₀ : ℂ) (h : MeromorphicAt f z₀) :
--     Res (f'/f) z₀ = -orderOfPole f z₀ := by
--   /--
--   We can write $f(z) = (z-z_0)^{-n} g(z)$, where $g$ is
--   holomorphic and $g(z_0) \neq 0$.
--   Then $f'(z) = -n(z-z_0)^{-n-1} g(z) +
--     (z-z_0)^{-n} g'(z)$, so
--   $$
--   \frac{f'(z)}{f(z)} =
--     \frac{-n}{z-z_0} + \frac{g'(z)}{g(z)}.
--   $$
--   The residue of the first term is $-n$, and the residue of
--   the second term is $0$.
--   -/
--   sorry_using [Residue, PoleOrder]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GeneralMeromorphic/Variant714d0f582077bac9bb043816e1188d2e5050bbec20af8783164442c5ec6cff4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GeneralMeromorphic/Variant714d0f582077bac9bb043816e1188d2e5050bbec20af8783164442c5ec6cff4c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aca347a780c75605aad5315748d4099082f0e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
