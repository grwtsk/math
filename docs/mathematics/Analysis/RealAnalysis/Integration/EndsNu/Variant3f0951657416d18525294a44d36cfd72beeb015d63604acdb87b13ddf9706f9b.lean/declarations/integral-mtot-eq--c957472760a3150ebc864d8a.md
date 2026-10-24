# integral_Mtot_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ed81344-3a20-e47b-72a0-58fdb6a08b3f",
  "kind": "lemma",
  "lexical_name": "integral_Mtot_eq",
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
  "slug": "integral-mtot-eq--c957472760a3150ebc864d8a",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 452,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c957472760a3150ebc864d8aa286dc6fbcc1c75e817c2d1e841e3e866053aeb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed81344-3a20-e47b-72a0-58fdb6a08b3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_Mtot_eq (hF : LocalHypsCoreW cϱ p F) (hT : 0 < p.T) :
    ∫ Δ in Ioi 0, Mtot cϱ p B Δ
      = (∫ Δ in Ioc 0 (2 * p.T), Mnear cϱ p B Δ) + ∫ Δ in Ioi (2 * p.T), Mfar cϱ p B Δ := by
  rw [setIntegral_eq_integral_of_forall_compl_eq_zero (fun Δ hΔ => ?_)]
  · unfold Mtot
    rw [integral_add ((integrable_indicator_iff measurableSet_Ioc).mpr (Mnear_integrableOn hF hT))
      ((integrable_indicator_iff measurableSet_Ioi).mpr (Mfar_integrableOn hF hT)),
      integral_indicator measurableSet_Ioc, integral_indicator measurableSet_Ioi]
  · unfold Mtot
    have hΔ' : Δ ≤ 0 := not_lt.mp hΔ
    rw [indicator_of_notMem (fun h : Δ ∈ Ioc 0 (2 * p.T) => not_lt.mpr hΔ' h.1),
      indicator_of_notMem (fun h : Δ ∈ Ioi (2 * p.T) => not_lt.mpr hΔ' (lt_trans (by linarith) h)),
      add_zero]

/-- near integral (§5.3): ∫_0^{2T} Mnear ≤ B[Ψ' + (L/2π)(Ψ' + (c/w) log 2T)],  Ψ' = ∫_0^∞ ψ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
