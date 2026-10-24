# Facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a3b5e957f7d950b751b41dc0094482e76e091781bab10dd0153ce2883b87226",
  "kind": "structure",
  "lexical_name": "Facts",
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
  "slug": "facts--9c9b5d071dbbaaffbba8dff6",
  "source": {
    "blob": "d1934960950af75446e27ed57e91a2883188050c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 365,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c9b5d071dbbaaffbba8dff6c350acdc9dfddab171bccd2d328caf4047adde50",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a3b5e957f7d950b751b41dc0094482e76e091781bab10dd0153ce2883b87226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Facts : Prop where
  lam_pos : 0 < P.lam
  lam_le_one : P.lam ≤ 1
  one_le_w : 1 ≤ P.w
  /-- [eq:abdef]: `1 − 2w/L ≤ b ≤ a ≤ 1` (for `T` large, so that `w ≤ L/8`). -/
  abdef : ∀ᶠ T in atTop, 1 - 2 * P.w / P.L T ≤ D.bT T ∧ D.bT T ≤ D.aT T ∧ D.aT T ≤ 1
  /-- [eq:RvM] (H-RvM): `N(T,2T) = T ℓ₁/2π + O(l)`. -/
  rvm : EvBound (fun T => D.Ncnt T - T * ell1 T / (2 * π)) l
  /-- [eq:muints], second formula (from H-Γ): `∫_T^{2T} μ² = (T ℓ₁²/4π²)(1 + O(l⁻²))`. -/
  muints2 : EvBound (fun T => D.intMu2 T - T * ell1 T ^ 2 / (4 * π ^ 2))
      (fun T => T * ell1 T ^ 2 / (4 * π ^ 2) / l T ^ 2)
  /-- [prop:trace]: `tr G̃ = a L N(T,2T) + O(L √X)`. -/
  prop_trace : EvBound (fun T => D.trG T - D.aT T * P.L T * D.Ncnt T)
      (fun T => P.L T * Real.sqrt (P.X T))
  /-- [lem:ends]: `tr G̃² = 𝓜 + O(L l log l (l² + X))`. -/
  lem_ends : EvBound (fun T => D.trG2 T - D.Mtot T)
      (fun T => P.L T * l T * Real.log (l T) * (l T ^ 2 + P.X T))
  /-- [eq:Msplit]: bilinear expansion of `𝓜 = 𝓜[ν_X, ν_X]`, `ν_X = μ + Π_X + P_X`. -/
  Msplit : ∀ᶠ T in atTop, D.Mtot T =
      D.Mmumu T + D.MPP T + 2 * D.MmuP T + 2 * D.MmuPi T + 2 * D.MPPi T + D.MPiPi T
  /-- [prop:mumu], first form: `𝓜[μ,μ] = 2π b L ∫_T^{2T} μ² + O(l² log L)`. -/
  prop_mumu : EvBound (fun T => D.Mmumu T - 2 * π * D.bT T * P.L T * D.intMu2 T)
      (fun T => l T ^ 2 * Real.log (P.L T))
  /-- [prop:PP] (this file, §3), first form:
    `𝓜[P_X,P_X] = (T/π) Σ_{n≤X} Λ(n)²/n g(log n) + O(L² X)`. -/
  prop_PP : EvBound (fun T => D.MPP T - T / π * D.sumL2g T) (fun T => P.L T ^ 2 * P.X T)
  /-- [prop:PP] (this file, §3), sandwich lower half: `Σ a_n² g(y_n) ≥ (L−2w)³/6 − O(L²)`. -/
  sum_lower : EvBound (fun T => min (D.sumL2g T - (P.L T - 2 * P.w) ^ 3 / 6) 0)
      (fun T => P.L T ^ 2)
  /-- sandwich upper half: `Σ a_n² g(y_n) ≤ L³/6 + O(L²)`. -/
  sum_upper : EvBound (fun T => max (D.sumL2g T - P.L T ^ 3 / 6) 0) (fun T => P.L T ^ 2)
  /-- [prop:cross]: `𝓜[μ,P_X] ≪ l √X`. -/
  cross_muP : EvBound D.MmuP (fun T => l T * Real.sqrt (P.X T))
  /-- [prop:cross]: `𝓜[μ,Π_X] ≪ l L √X`. -/
  cross_muPi : EvBound D.MmuPi (fun T => l T * P.L T * Real.sqrt (P.X T))
  /-- [prop:cross]: `𝓜[P_X,Π_X] ≪ L X`. -/
  cross_PPi : EvBound D.MPPi (fun T => P.L T * P.X T)
  /-- [prop:cross]: `𝓜[Π_X,Π_X] ≪ L X / T`. -/
  cross_PiPi : EvBound D.MPiPi (fun T => P.L T * P.X T / T)

/-! ### The assembly -/

section assembly
variable {D} (h : Facts D)
include h

/-- [eq:tr1], first equality — this is [prop:trace] verbatim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variant547396d688d87cf2b1e569b6f14e3da3c47d79c6a4b4a7b37532bd2766f2411c.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1934960950af75446e27ed57e91a2883188050c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
