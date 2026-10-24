# tr2_first_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a238425a-659a-c71a-792d-ef24156c3b4f",
  "kind": "theorem",
  "lexical_name": "tr2_first_chi",
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
  "slug": "tr2-first-chi--3dfc60eadc1d7d81fe08825a",
  "source": {
    "blob": "002d9e76f53226936f0854e872936b9f9316bb88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 187,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dfc60eadc1d7d81fe08825acb79fa90485627c909652d4fbfc7c908149662be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a238425a-659a-c71a-792d-ef24156c3b4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr2_first_chi : EvBound
    (fun T => D.trG2 T - (2 * π * D.bT T * P.L T * D.intMu2 T + T / π * D.sumL2gq T))
    (fun T => P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T)) := by
  have e4 : EvBound (fun T => D.MPP T - T / π * D.sumL2gq T)
      (fun T => P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T)) := by
    refine h.prop_PP.mono_right' one_pos ?_
    filter_upwards [regime_chi h] with T ⟨hT, hl, hlog, hL, hX, hLl, hXT⟩
    calc P.L T ^ 2 * P.X T = P.L T * P.L T * 1 * P.X T := by ring
      _ ≤ P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T) := by gcongr; nlinarith
      _ = 1 * (P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T)) := (one_mul _).symm
  have e3 : EvBound (fun T => D.Mmumu T - 2 * π * D.bT T * P.L T * D.intMu2 T)
      (fun T => P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T)) := by
    refine h.prop_mumu.mono_right' one_pos ?_
    filter_upwards [regime_chi h] with T ⟨hT, hl, hlog, hL, hX, hLl, hXT⟩
    have hlogL : Real.log (P.L T) ≤ Real.log (Zeta23.l T) := Real.log_le_log (by linarith) hLl
    have hlogL0 : 0 ≤ Real.log (P.L T) := Real.log_nonneg hL
    calc Zeta23.l T ^ 2 * Real.log (P.L T) ≤ Zeta23.l T ^ 2 * Real.log (Zeta23.l T) := by gcongr
      _ = 1 * Zeta23.l T * Real.log (Zeta23.l T) * Zeta23.l T := by ring
      _ ≤ P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T) := by gcongr; nlinarith
      _ = _ := (one_mul _).symm
  have hsqrtX : ∀ᶠ T in atTop, Real.sqrt (P.X T) ≤ P.X T := by
    filter_upwards [regime_chi h] with T ⟨hT, hl, hlog, hL, hX, hLl, hXT⟩
    rw [Real.sqrt_le_left (by linarith)]
    nlinarith
  have e5 : EvBound D.MmuP
      (fun T => P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T)) := by
    refine h.cross_muP.mono_right' one_pos ?_
    filter_upwards [regime_chi h, hsqrtX] with T ⟨hT, hl, hlog, hL, hX, hLl, hXT⟩ hs
    calc Zeta23.l T * Real.sqrt (P.X T) ≤ Zeta23.l T * P.X T := by gcongr
      _ = 1 * Zeta23.l T * 1 * (0 + P.X T) := by ring
      _ ≤ P.L T * Zeta23.l T * Real.log (Zeta23.l T) * (Zeta23.l T ^ 2 + P.X T) := by gcongr; nlinarith
      _ = _ := (one_mul _).symm
  have S := h.lem_ends.add (e3.add (e4.add (e5.const_mul 2)))
  refine S.congr_left ?_
  filter_upwards [h.Msplit] with T hM
  rw [hM]; ring

/-- [eq:tr2], second form for chi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracesChi/Variant5daa19be8d47142c891b394e0ff36daf39f9f7c640e51a6ce4543ea2a576489a.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002d9e76f53226936f0854e872936b9f9316bb88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
