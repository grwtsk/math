# FactsD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a16da9c1c78ac89f677c03ea62dd752fbb09ecaf347df1993e9682387627dda",
  "kind": "structure",
  "lexical_name": "FactsD",
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
  "slug": "factsd--247adadc70ffbca8a9bdcccc",
  "source": {
    "blob": "0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:247adadc70ffbca8a9bdcccc5647af7129fd11f22ae3ac1348ec275d2bb13401",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a16da9c1c78ac89f677c03ea62dd752fbb09ecaf347df1993e9682387627dda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FactsD : Prop where
  lam_pos : 0 < P.lam
  lam_le_one : P.lam ≤ 1
  one_le_w : 1 ≤ P.w
  /-- window-general [eq:abJ] ranges: 1/2 ≤ b ≤ a ≤ 1 and 0 ≤ J ≤ 1 eventually. -/
  ab_range : ∀ᶠ T in atTop,
    1 / 2 ≤ D.bT T ∧ D.bT T ≤ D.aT T ∧ D.aT T ≤ 1 ∧ 0 ≤ D.JT T ∧ D.JT T ≤ 1
  rvm : EvBound (fun T => D.Ncnt T - T * ell1 T / (2 * π)) l
  muints2 : EvBound (fun T => D.intMu2 T - T * ell1 T ^ 2 / (4 * π ^ 2))
      (fun T => T * ell1 T ^ 2 / (4 * π ^ 2) / l T ^ 2)
  prop_trace : EvBound (fun T => D.trG T - D.aT T * P.L T * D.Ncnt T)
      (fun T => P.L T * Real.sqrt (P.X T))
  lem_ends : EvBound (fun T => D.trG2 T - D.Mtot T)
      (fun T => P.L T * l T * Real.log (l T) * (l T ^ 2 + P.X T))
  Msplit : ∀ᶠ T in atTop, D.Mtot T =
      D.Mmumu T + D.MPP T + 2 * D.MmuP T + 2 * D.MmuPi T + 2 * D.MPPi T + D.MPiPi T
  prop_mumu : EvBound (fun T => D.Mmumu T - 2 * π * D.bT T * P.L T * D.intMu2 T)
      (fun T => l T ^ 2 * Real.log (P.L T))
  prop_PP : EvBound (fun T => D.MPP T - T / π * D.sumL2g T) (fun T => P.L T ^ 2 * P.X T)
  /-- the §7.1 partial-summation step in place of the sandwich:
  Σ_{n≤X} a_n² g(y_n) = (L³/2)·J_T + O(L²). -/
  sumJ : EvBound (fun T => D.sumL2g T - P.L T ^ 3 / 2 * D.JT T) (fun T => P.L T ^ 2)
  cross_muP : EvBound D.MmuP (fun T => l T * Real.sqrt (P.X T))
  cross_muPi : EvBound D.MmuPi (fun T => l T * P.L T * Real.sqrt (P.X T))
  cross_PPi : EvBound D.MPPi (fun T => P.L T * P.X T)
  cross_PiPi : EvBound D.MPiPi (fun T => P.L T * P.X T / T)

/-- The pointwise inequality behind the D-version of [eq:tr2] ([eq:ratio-general] main term):
with the window moments b, J symbolic and the partial-summation input |S − L³J/2| ≤ Cs·L²
in place of the flat-top sandwich, |G2 − (TL/2π)(bℓ² + L²J)| ≤ C·E·(TL/2π)(bℓ² + L²J).
Simpler than PrimeSide.tr2_pointwise: no (b−1)-collapse is needed since b stays in the main term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
