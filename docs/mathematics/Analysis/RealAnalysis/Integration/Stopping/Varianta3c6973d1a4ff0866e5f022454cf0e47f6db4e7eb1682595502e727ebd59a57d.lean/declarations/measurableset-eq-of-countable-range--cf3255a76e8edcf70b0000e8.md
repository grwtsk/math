# measurableSet_eq_of_countable_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fae4d16-4fbc-d738-2ab8-7db5dcbfa15c",
  "kind": "theorem",
  "lexical_name": "measurableSet_eq_of_countable_range",
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
  "slug": "measurableset-eq-of-countable-range--cf3255a76e8edcf70b0000e8",
  "source": {
    "blob": "9c891612ada35af032e0a56a86b684e7c548ecf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf3255a76e8edcf70b0000e878685be3a0f27d15ee5bd15d4089334c2275d64b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fae4d16-4fbc-d738-2ab8-7db5dcbfa15c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem measurableSet_eq_of_countable_range (hτ : IsStoppingTime f τ)
    (h_countable : (Set.range τ).Countable) (i : ι) : MeasurableSet[f i] {ω | τ ω = i} := by
  have : {ω | τ ω = i} = {ω | τ ω ≤ i} \ ⋃ (j ∈ Set.range τ) (_ : j < i), {ω | τ ω ≤ j} := by
    ext1 a
    simp only [Set.mem_setOf_eq, Set.mem_range, Set.iUnion_exists, Set.iUnion_iUnion_eq',
      Set.mem_diff, Set.mem_iUnion, exists_prop, not_exists, not_and, not_le]
    constructor <;> intro h
    · simp only [h, lt_iff_le_not_le, le_refl, and_imp, imp_self, imp_true_iff, and_self_iff]
    · have h_lt_or_eq : τ a < i ∨ τ a = i := lt_or_eq_of_le h.1
      rcases h_lt_or_eq with (h_lt | rfl)
      · exfalso
        exact h.2 a h_lt (le_refl (τ a))
      · rfl
  rw [this]
  refine' (hτ.measurableSet_le i).diff _
  refine' MeasurableSet.biUnion h_countable fun j _ => _
  by_cases hji : j < i
  · simp only [hji, Set.iUnion_true]
    exact f.mono hji.le _ (hτ.measurableSet_le j)
  · simp only [hji, Set.iUnion_false]
    exact @MeasurableSet.empty _ (f i)
#align measure_theory.is_stopping_time.measurable_set_eq_of_countable_range MeasureTheory.IsStoppingTime.measurableSet_eq_of_countable_range

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c891612ada35af032e0a56a86b684e7c548ecf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
