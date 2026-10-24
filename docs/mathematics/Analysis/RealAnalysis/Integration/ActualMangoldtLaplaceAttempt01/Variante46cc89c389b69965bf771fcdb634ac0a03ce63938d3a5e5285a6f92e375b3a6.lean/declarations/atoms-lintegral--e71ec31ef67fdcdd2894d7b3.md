# atoms_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90cba696-d2b9-5df6-8fda-8feae7593469",
  "kind": "theorem",
  "lexical_name": "atoms_lintegral",
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
  "slug": "atoms-lintegral--e71ec31ef67fdcdd2894d7b3",
  "source": {
    "blob": "5ef83e182fbf018dae1b8559b08b006365b13e65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e71ec31ef67fdcdd2894d7b306bcef831432b6bda5eca15032902b914b3564c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90cba696-d2b9-5df6-8fda-8feae7593469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atoms_lintegral {s : ℝ} (hs : 0 < s) :
    (∫⁻ t : ℝ, ENNReal.ofReal (∑' n : ℕ, laplaceAtom s n t)) =
      ENNReal.ofReal (∑' n : ℕ, ∫ t : ℝ, laplaceAtom s n t) := by
  calc
    _ = ∫⁻ t : ℝ, ∑' n : ℕ, ENNReal.ofReal (laplaceAtom s n t) := by
      apply lintegral_congr
      intro t
      exact ENNReal.ofReal_tsum_of_nonneg (fun n => atom_nonneg s t n) (atoms_summable s t)
    _ = ∑' n : ℕ, ∫⁻ t : ℝ, ENNReal.ofReal (laplaceAtom s n t) :=
      lintegral_tsum (fun n => (atom_measurable s n).ennreal_ofReal.aemeasurable)
    _ = ∑' n : ℕ, ENNReal.ofReal (∫ t : ℝ, laplaceAtom s n t) := by
      apply tsum_congr
      intro n
      exact (ofReal_integral_eq_lintegral_ofReal (atom_integrable hs n)
        (Eventually.of_forall (fun t => atom_nonneg s t n))).symm
    _ = _ := (ENNReal.ofReal_tsum_of_nonneg
      (fun n => integral_nonneg (fun t => atom_nonneg s t n)) (atoms_integrals_summable hs)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante46cc89c389b69965bf771fcdb634ac0a03ce63938d3a5e5285a6f92e375b3a6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef83e182fbf018dae1b8559b08b006365b13e65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
