# mainTr2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:546419ee89f3bb6aae096cb2f975c2007af8acc5136bab739267bb06c6044c17",
  "kind": "def",
  "lexical_name": "mainTr2",
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
  "slug": "maintr2--8644b35ba40cae07371afcad",
  "source": {
    "blob": "f9e2839242bf849085c73292751c344fc7e53ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8644b35ba40cae07371afcad6fb088e59c089e6fe52e9a6fac173781709e1c4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:546419ee89f3bb6aae096cb2f975c2007af8acc5136bab739267bb06c6044c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mainTr2 : ℝ := T * P.L T / (2 * π) * (ell1 T ^ 2 + P.L T ^ 2 / 3)

end Params

/-- # `TracesBounds` — the conclusions of the paper's **[thm:traces]**

Parametric in four real functions of `T` (fixed `P = (ϱ, λ, w)`; §6 takes `w = 1`):
* `aT T`   — the taper constant `a := L⁻¹ ∫ φ²` of [eq:abdef];
* `trG T`  — `tr G̃`,  `G̃ := G/L`, `G_{kl} = ∫_ℝ φ̂(τ−τ_k) φ̂(τ−τ_l) ν_X(τ) dτ` ([eq:Gdef], 2nd expression);
* `trG2 T` — `tr G̃² = Σ_{k,l<d} G̃_{kl}²`;
* `Ncnt T` — `N(T,2T)` (zeros with ordinate in `(T,2T]`, with multiplicity), as a real number.
The canonical instantiation is `ThmTracesHyp` below; the parametric form exists so that
`PrimeSideB` can prove it once over abstract data.

Paper statement (the paper, Theorem [thm:traces], verbatim up to TeX):
"Let 0<λ≤1, L=λl, X=e^L, 1≤w≤L/8, and let G̃ be the matrix (eq:Gdef). Put
 𝓔_T := w/L + (l²+X) log l/(T l) + T^{λ/2−1} … Then for T ≥ T₀(λ), with implied constants
 depending only on ϱ,
   tr G̃  = aL N(T,2T) + O(L√X) = L N(T,2T)(1+O(𝓔_T)),                                   (eq:tr1)
   tr G̃² = 2πbL∫_T^{2T}μ² + (T/π)Σ_{n≤X} Λ(n)²/n g(log n) + O(L l log l (l²+X))
         = (TL/2π)(ℓ₁² + L²/3)(1+O(𝓔_T)),                                                 (eq:tr2)
   (tr G̃)²/tr G̃² = F(λ₁) N(T,2T) (1+O(𝓔_T)),   λ₁ = L/ℓ₁ = λ(1 − (2log2−1)/ℓ₁).          (eq:ratio)"

Formalization notes (deviations — all weakenings of the paper's conclusion, and no harder to
consume at fixed λ):
* each `O(·)` is an `EvBound`: `∃ C > 0, ∃ T₀, ∀ T ≥ T₀, |lhs − main| ≤ C · err`; the paper has `C`
  depending only on `ϱ` and `T₀` on `λ` — here both may depend on all of `P = (ϱ, λ, w)`;
* only the second forms of [eq:tr1] (both equalities given) and of [eq:tr2] are recorded — they are
  what §6 uses; the first form of [eq:tr2] is an intermediate result proved in `PrimeSideB`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideTemp/Variant143b8a1d2dd5ac52ccde472e53ee7a34d1794dd3c7992466f2b01236f72088cc.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9e2839242bf849085c73292751c344fc7e53ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
