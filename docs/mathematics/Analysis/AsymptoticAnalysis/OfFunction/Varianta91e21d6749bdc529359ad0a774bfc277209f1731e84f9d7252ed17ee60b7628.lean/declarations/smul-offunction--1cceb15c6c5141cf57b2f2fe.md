# smul_ofFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57de1067-669e-8d94-30d3-534a68f0944f",
  "kind": "theorem",
  "lexical_name": "smul_ofFunction",
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
  "slug": "smul-offunction--1cceb15c6c5141cf57b2f2fe",
  "source": {
    "blob": "0e14b07315fc17f7cf534c1736e086d2ac5582b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 237,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cceb15c6c5141cf57b2f2fe3efa1eaea0013495fba09eb7d43b3edeca2b9be5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57de1067-669e-8d94-30d3-534a68f0944f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_ofFunction {c : ℝ≥0∞} (hc : c ≠ ∞) : c • OuterMeasure.ofFunction m m_empty =
    OuterMeasure.ofFunction (c • m) (by simp [m_empty]) := by
  ext1 s
  haveI : Nonempty { t : ℕ → Set α // s ⊆ ⋃ i, t i } := ⟨⟨fun _ => s, subset_iUnion (fun _ => s) 0⟩⟩
  simp only [smul_apply, ofFunction_apply, ENNReal.tsum_mul_left, Pi.smul_apply, smul_eq_mul,
  iInf_subtype']
  rw [ENNReal.mul_iInf fun h => (hc h).elim]

end OfFunction

section BoundedBy

variable {α : Type*} (m : Set α → ℝ≥0∞)

/-- Given any function `m` assigning measures to sets, there is a unique maximal outer measure `μ`
  satisfying `μ s ≤ m s` for all `s : Set α`. This is the same as `OuterMeasure.ofFunction`,
  except that it doesn't require `m ∅ = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e14b07315fc17f7cf534c1736e086d2ac5582b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
