# ExplicitFormulaPaper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:701ae6448c5749d7ebf362c5d852451cd532e09b9a460b6bad1e7994c04bcbe1",
  "kind": "def",
  "lexical_name": "ExplicitFormulaPaper",
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
  "slug": "explicitformulapaper--fb6c4998163f4f1aaa3c0a0b",
  "source": {
    "blob": "d81d0ae15629e3345e6a1d9235fc21ac491425a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb6c4998163f4f1aaa3c0a0b5aae6d060be8d12eeb9203019dc1243382712e35",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:701ae6448c5749d7ebf362c5d852451cd532e09b9a460b6bad1e7994c04bcbe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExplicitFormulaPaper (Z : ZeroConfig) : Prop :=
  ∀ (L : ℝ), 0 < L → ∀ (f g : ℝ → ℂ), ContDiff ℝ 2 f → ContDiff ℝ 2 g →
    tsupport f ⊆ Icc (-(L / 2)) (L / 2) → tsupport g ⊆ Icc (-(L / 2)) (L / 2) →
    Summable (fun ρ : Z.carrier => Z.Wsummand f g ρ) ∧
    Integrable (fun τ : ℝ => paperFT f τ * conj (paperFT g τ) * (nuX (Real.exp L) τ : ℂ)) ∧
    Z.W f g = ∫ τ : ℝ, paperFT f τ * conj (paperFT g τ) * (nuX (Real.exp L) τ : ℂ)

/-! ## H-RvM — Riemann–von Mangoldt + local zero count  [eq:RvM], [prop:tail] first line -/

/-- **H-RvM**.
* main [eq:RvM], verbatim: "By the Riemann–von Mangoldt formula, with l := log(T/2π),
  N(T,2T) = (T/2π)(l + 2 log 2 − 1) + O(log T)."  (ell1 T = l T + 2 log 2 − 1.) Source: [Tit86, Thm 9.4].
* local_count [prop:tail]: "Let A₀ ≥ 1 be an absolute constant such that N(t+1) − N(t) ≤ A₀ log(t+3)
  for all t ≥ 0" — "classical [Tit86, Theorem 9.2]".
  Deviation (deliberate): stated two-sided, for all real t with
  log(|t|+3), i.e. also for windows of negative ordinate. The paper's proof of prop:tail bounds the
  zeros with γ ≤ 0 using the γ ↦ −γ symmetry of the zero set, which it states in [subsec:weil] but
  which is not a field of ZeroConfig; the two-sided local count is an equally classical consequence
  of [Tit86, 9.2] + that symmetry and removes the extra seam obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant1e604b4f29fb39971a7d8f28e4371bc6950752e37174d261527c19336d70ff2c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d81d0ae15629e3345e6a1d9235fc21ac491425a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
