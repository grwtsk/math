# FactsDChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:567c98b149f03b54202f951514beaaf5cd3028897eb6026a416c1183c850abb8",
  "kind": "structure",
  "lexical_name": "FactsDChi",
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
  "slug": "factsdchi--3d3fa70c2da83b070a93e394",
  "source": {
    "blob": "2013a6ca1e3b7da5aa0b8bc8c7e03cd5593171e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d3fa70c2da83b070a93e39487c10037c2dacfd0f923640036015ce7cf3e2657",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:567c98b149f03b54202f951514beaaf5cd3028897eb6026a416c1183c850abb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FactsDChi (q : ℕ) (D : DataDChi P) : Prop where
  lam_pos : 0 < P.lam
  lam_le_one : P.lam ≤ 1
  one_le_w : 1 ≤ P.w
  one_le_q : 1 ≤ q
  /-- window-general [eq:abJ] ranges: 1/2 ≤ b ≤ a ≤ 1 and 0 ≤ J ≤ 1 eventually. -/
  ab_range : ∀ᶠ T in atTop,
    1 / 2 ≤ D.bT T ∧ D.bT T ≤ D.aT T ∧ D.aT T ≤ 1 ∧ 0 ≤ D.JT T ∧ D.JT T ≤ 1
  rvm : EvBound (fun T => D.Ncnt T - T * ell1q q T / (2 * π)) l
  muints2 : EvBound (fun T => D.intMu2 T - T * ell1q q T ^ 2 / (4 * π ^ 2))
      (fun T => T * ell1q q T ^ 2 / (4 * π ^ 2) / l T ^ 2)
  prop_trace : EvBound (fun T => D.trG T - D.aT T * P.L T * D.Ncnt T)
      (fun T => P.L T * Real.sqrt (P.X T))
  lem_ends : EvBound (fun T => D.trG2 T - D.Mtot T)
      (fun T => P.L T * l T * Real.log (l T) * (l T ^ 2 + P.X T))
  Msplit : ∀ᶠ T in atTop, D.Mtot T = D.Mmumu T + D.MPP T + 2 * D.MmuP T
  prop_mumu : EvBound (fun T => D.Mmumu T - 2 * π * D.bT T * P.L T * D.intMu2 T)
      (fun T => l T ^ 2 * Real.log (P.L T))
  prop_PP : EvBound (fun T => D.MPP T - T / π * D.sumL2gq T) (fun T => P.L T ^ 2 * P.X T)
  /-- the §7.1 partial-summation step for the coprime sum:
  Σ_{n≤X,(n,q)=1} a_n² g(y_n) = (L³/2)·J_T + O_q(L²). -/
  sumJ : EvBound (fun T => D.sumL2gq T - P.L T ^ 3 / 2 * D.JT T) (fun T => P.L T ^ 2)
  cross_muP : EvBound D.MmuP (fun T => l T * Real.sqrt (P.X T))

section assemblyD
variable {D} (h : FactsDChi q D)
include h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant8d8f0f52ba29b1d275fecdbe85c1ac1300de29c0eeef26eb1a507483f0a17b40.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2013a6ca1e3b7da5aa0b8bc8c7e03cd5593171e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
