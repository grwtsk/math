# atom_norm_integrals_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1c5169d-073d-7fe7-0f80-99e8f0275cbf",
  "kind": "theorem",
  "lexical_name": "atom_norm_integrals_summable",
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
  "slug": "atom-norm-integrals-summable--16f590c28a1a69d5d21993b9",
  "source": {
    "blob": "b60a8c031a1b0292ff751f1560af73abbf736c47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f590c28a1a69d5d21993b92c355311d932f53b6b611fd23878d232c9671421",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1c5169d-073d-7fe7-0f80-99e8f0275cbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_norm_integrals_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖laplaceAtom s n t‖) := by
  have h := (ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s:=((s+1 : ℝ):ℂ)) (by simp only [Complex.ofReal_re]; linarith)).norm
  have hn := (summable_nat_add_iff 2).mpr h
  have he (n : ℕ) : (∫ t : ℝ, ‖laplaceAtom s n t‖) =
    ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ / s := by
    simp_rw [Real.norm_of_nonneg (atom_nonneg s _ n)]
    rw [atom_integral hs,weighted_exp_eq_norm_term]
  simp_rw [he]
  exact hn.div_const s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60a8c031a1b0292ff751f1560af73abbf736c47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
