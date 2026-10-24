# uniform_window_of_zero_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edc8e727-2258-606f-f660-0a15daebbe2d",
  "kind": "theorem",
  "lexical_name": "uniform_window_of_zero_moments",
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
  "slug": "uniform-window-of-zero-moments--37feeaef79d2c64574d51679",
  "source": {
    "blob": "eb75ea9b5f7c985cebb5a213de0d591db0437dd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37feeaef79d2c64574d516797b05720d7056642dbd63e9b20ed50170bb16a17d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edc8e727-2258-606f-f660-0a15daebbe2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_window_of_zero_moments (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (positive : 0 < roots.card)
    (zero : ∀ S ⊆ I, S ≠ ∅ → mixedMoment roots S x = 0) (a : ι → Bool) :
    empiricalPattern roots I x a = 1 / (2 : ℚ) ^ I.card := by
  classical
  have reconstruction := empiricalPattern_walsh roots I x a positive
  have moments : (∑ S ∈ I.powerset, empiricalMoment roots S x a) = 1 := by
    rw [Finset.sum_eq_single (∅ : Finset ι)]
    · rw [empiricalMoment_factor, mixedMoment_empty roots x positive]
      simp
    · intro S hS hnonempty
      rw [empiricalMoment_factor, zero S (Finset.mem_powerset.mp hS) hnonempty]
      simp
    · simp
  rw [moments] at reconstruction
  apply (eq_div_iff (by positivity : (2 : ℚ) ^ I.card ≠ 0)).mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb75ea9b5f7c985cebb5a213de0d591db0437dd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
