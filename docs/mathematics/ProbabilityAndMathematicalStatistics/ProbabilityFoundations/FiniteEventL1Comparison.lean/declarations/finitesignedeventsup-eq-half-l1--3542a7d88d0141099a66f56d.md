# finiteSignedEventSup_eq_half_l1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aa9b381-a29c-c990-ddd5-39384e232b8d",
  "kind": "theorem",
  "lexical_name": "finiteSignedEventSup_eq_half_l1",
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
  "slug": "finitesignedeventsup-eq-half-l1--3542a7d88d0141099a66f56d",
  "source": {
    "blob": "299267ab1f8f9ab5f66f4af4d36df8633460668e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 124,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3542a7d88d0141099a66f56de796018598b82af528e2e2779eb6b12ee8c2efd7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa9b381-a29c-c990-ddd5-39384e232b8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSignedEventSup_eq_half_l1
    (δ : β → ℚ) (hzero : (∑ b : β, δ b) = 0) :
    finiteSignedEventSup δ = (∑ b : β, |δ b|) / 2 := by
  classical
  have hupper : finiteSignedEventSup δ ≤ (∑ b : β, |δ b|) / 2 := by
    unfold finiteSignedEventSup
    apply Finset.sup'_le
    intro event hevent
    have h := two_mul_abs_finiteSignedEventMass_le δ event hzero
    linarith
  let posEvent : β → Bool := nonnegativeMassEvent δ
  have hpositive :
      (∑ b : β, finiteEventSign posEvent b * δ b) =
        ∑ b : β, |δ b| := by
    apply Finset.sum_congr rfl
    intro b hb
    exact nonnegativeMassEvent_sign δ b
  have htwice :
      2 * finiteSignedEventMass δ posEvent =
        ∑ b : β, |δ b| := by
    calc
      2 * finiteSignedEventMass δ posEvent =
          ∑ b : β, finiteEventSign posEvent b * δ b :=
        (finiteEventSign_pairing δ posEvent hzero).symm
      _ = ∑ b : β, |δ b| := hpositive
  have hmass_nonneg : 0 ≤ finiteSignedEventMass δ posEvent := by
    have hs : 0 ≤ ∑ b : β, |δ b| :=
      Finset.sum_nonneg (fun b hb => abs_nonneg (δ b))
    linarith
  have hlower : (∑ b : β, |δ b|) / 2 ≤ finiteSignedEventSup δ := by
    calc
      (∑ b : β, |δ b|) / 2 =
          |finiteSignedEventMass δ posEvent| := by
        rw [abs_of_nonneg hmass_nonneg]
        linarith
      _ ≤ finiteSignedEventSup δ := by
        unfold finiteSignedEventSup
        exact Finset.le_sup'
          (fun event : β → Bool => |finiteSignedEventMass δ event|)
          (Finset.mem_univ posEvent)
  exact le_antisymm hupper hlower

/-- The exact category-mass difference divided by the ORIGINAL root
cardinality, not by the size of the Boolean event family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299267ab1f8f9ab5f66f4af4d36df8633460668e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
