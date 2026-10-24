# FactsChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b1f26410b19434b1c8b0919b364d7f55b31a1295e87782439602275ecff0cd7",
  "kind": "structure",
  "lexical_name": "FactsChi",
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
  "slug": "factschi--77b4721ad1eee6181b67e03d",
  "source": {
    "blob": "27944502232eac80c7f2ae0c95bbd1998c72d40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77b4721ad1eee6181b67e03d4defbbfb2ae3a60881b0dae7c0fffceb3337b649",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b1f26410b19434b1c8b0919b364d7f55b31a1295e87782439602275ecff0cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FactsChi (q : ℕ) (D : DataChi P) : Prop where
  lam_pos : 0 < P.lam
  lam_le_one : P.lam ≤ 1
  one_le_w : 1 ≤ P.w
  one_le_q : 1 ≤ q
  abdef : ∀ᶠ T in atTop, 1 - 2 * P.w / P.L T ≤ D.bT T ∧ D.bT T ≤ D.aT T ∧ D.aT T ≤ 1
  rvm : EvBound (fun T => D.Ncnt T - T * ell1q q T / (2 * π)) Zeta23.l
  muints2 : EvBound (fun T => D.intMu2 T - T * ell1q q T ^ 2 / (4 * π ^ 2))
      (fun T => T * ell1q q T ^ 2 / (4 * π ^ 2) / Zeta23.l T ^ 2)
  prop_trace : EvBound (fun T => D.trG T - D.aT T * P.L T * D.Ncnt T)
      (fun T => P.L T * Real.sqrt (P.X T))
  lem_ends : EvBound (fun T => D.trG2 T - D.Mtot T)
      (fun T => P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T))
  Msplit : ∀ᶠ T in atTop, D.Mtot T = D.Mmumu T + D.MPP T + 2 * D.MmuP T
  prop_mumu : EvBound (fun T => D.Mmumu T - 2 * π * D.bT T * P.L T * D.intMu2 T)
      (fun T => Zeta23.l T ^ 2 * Real.log (P.L T))
  prop_PP : EvBound (fun T => D.MPP T - T / π * D.sumL2gq T) (fun T => P.L T ^ 2 * P.X T)
  sum_lower : EvBound (fun T => min (D.sumL2gq T - (P.L T - 2 * P.w) ^ 3 / 6) 0)
      (fun T => P.L T ^ 2)
  sum_upper : EvBound (fun T => max (D.sumL2gq T - P.L T ^ 3 / 6) 0) (fun T => P.L T ^ 2)
  cross_muP : EvBound D.MmuP (fun T => Zeta23.l T * Real.sqrt (P.X T))

section assembly
variable {D} (h : FactsChi q D)
include h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant3ee19ecc36e68a5f2805a56324b7479dcaaccef4d5e7dc887249e6901dbdb9ee.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27944502232eac80c7f2ae0c95bbd1998c72d40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
