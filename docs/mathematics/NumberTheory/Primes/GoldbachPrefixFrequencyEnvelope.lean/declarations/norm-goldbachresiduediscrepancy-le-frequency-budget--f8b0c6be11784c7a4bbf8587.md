# norm_goldbachResidueDiscrepancy_le_frequency_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b15eec6-853c-5a11-de46-a5e487d70514",
  "kind": "theorem",
  "lexical_name": "norm_goldbachResidueDiscrepancy_le_frequency_budget",
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
  "slug": "norm-goldbachresiduediscrepancy-le-frequency-budget--f8b0c6be11784c7a4bbf8587",
  "source": {
    "blob": "e5c8f3f1184a6fae1d41dd9d5fcffa21dc1848ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b0c6be11784c7a4bbf8587c74f0f50a54ce43b3e6ed9440b478542f61a2930",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b15eec6-853c-5a11-de46-a5e487d70514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachResidueDiscrepancy_le_frequency_budget
    {N q r : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : q.Coprime r → 0 ≤ B q r ∧
      ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (β : ℝ) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      goldbachPrefixFrequencyResidueBudget N q r B β := by
  by_cases hc : q.Coprime r
  · obtain ⟨hB, hprefix⟩ := hp hc
    rw [goldbachPrefixFrequencyResidueBudget, if_pos hc]
    exact norm_goldbachResidueProgressionDiscrepancy_le_of_prefix hB hprefix β
  · rw [goldbachPrefixFrequencyResidueBudget, if_neg hc]
    exact norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime N q r hc β

/-- Frequency-dependent residue bounds supply the exact exponential error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5c8f3f1184a6fae1d41dd9d5fcffa21dc1848ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
