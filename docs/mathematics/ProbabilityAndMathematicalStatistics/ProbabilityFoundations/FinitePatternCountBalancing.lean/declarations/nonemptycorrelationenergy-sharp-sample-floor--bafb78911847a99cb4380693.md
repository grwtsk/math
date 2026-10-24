# nonemptyCorrelationEnergy_sharp_sample_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef3d6666-e594-e5fb-b59f-ffe004d93952",
  "kind": "theorem",
  "lexical_name": "nonemptyCorrelationEnergy_sharp_sample_floor",
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
  "slug": "nonemptycorrelationenergy-sharp-sample-floor--bafb78911847a99cb4380693",
  "source": {
    "blob": "a304d369abbf8930526cc25633965886fadc9b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 284,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bafb78911847a99cb438069324c0fbef04ebe62d34c91d864a66f828ed21169a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef3d6666-e594-e5fb-b59f-ffe004d93952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonemptyCorrelationEnergy_sharp_sample_floor
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (hroots : 0 < roots.card) :
    (((roots.card % Fintype.card (ι → Bool) : ℕ) : ℚ) *
      ((Fintype.card (ι → Bool) -
        roots.card % Fintype.card (ι → Bool) : ℕ) : ℚ)) /
        (roots.card : ℚ) ^ 2 ≤
      nonemptyCorrelationEnergy roots x := by
  classical
  let s : Finset (ι → Bool) := Finset.univ
  have hq : 0 < s.card := by
    simp [s]
  have htotal :
      (∑ a ∈ s, fullPatternNatCount roots x a) = roots.card := by
    simpa [s] using fullPatternNatCount_total roots x
  have hfloor :=
    finite_count_square_rational_floor s
      (fullPatternNatCount roots x) roots.card hq htotal
  have henergy :=
    nonemptyCorrelationEnergy_eq_natCount_defect roots x hroots
  have hN : (0 : ℚ) < (roots.card : ℚ) := by
    exact_mod_cast hroots
  have hN2 : (0 : ℚ) < (roots.card : ℚ) ^ 2 := sq_pos_of_pos hN
  dsimp [s] at hfloor
  rw [henergy]
  apply (div_le_div_iff_of_pos_right hN2).2
  simpa only [Finset.card_univ] using hfloor


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a304d369abbf8930526cc25633965886fadc9b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
