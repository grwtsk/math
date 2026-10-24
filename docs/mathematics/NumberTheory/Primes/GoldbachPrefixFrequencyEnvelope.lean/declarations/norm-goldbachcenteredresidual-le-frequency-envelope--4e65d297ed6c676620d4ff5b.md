# norm_goldbachCenteredResidual_le_frequency_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53767a9d-9adf-5311-cd5b-9052a03fb570",
  "kind": "theorem",
  "lexical_name": "norm_goldbachCenteredResidual_le_frequency_envelope",
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
  "slug": "norm-goldbachcenteredresidual-le-frequency-envelope--4e65d297ed6c676620d4ff5b",
  "source": {
    "blob": "e5c8f3f1184a6fae1d41dd9d5fcffa21dc1848ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e65d297ed6c676620d4ff5b3c332e8d5a502b6f1adb15869731232bba6ffc20",
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

Occurrence: `result:53767a9d-9adf-5311-cd5b-9052a03fb570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachCenteredResidual_le_frequency_envelope
    {N a q : ℕ} (hq : 0 < q) (B : ℕ → ℕ → ℝ)
    (hp : ∀ r ∈ Finset.range q, q.Coprime r → 0 ≤ B q r ∧
      ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (β : ℝ) :
    ‖goldbachCenteredProgressionCircleResidual N a q β‖ ≤
      goldbachPrefixFrequencyEnvelope N a q B β := by
  unfold goldbachPrefixFrequencyEnvelope
  apply le_min
  · exact norm_goldbachCenteredProgressionCircleResidual_le_of_residue hq
      (fun r hr => norm_goldbachResidueDiscrepancy_le_frequency_budget B (hp r hr) β)
  · exact norm_goldbachCenteredProgressionCircleResidual_le_model_of_bound
      (norm_goldbachProgressionDiscrepancy_le_frequency_error B hp β)

/-- The chord loss respects integral period shifts without choosing a lift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5c8f3f1184a6fae1d41dd9d5fcffa21dc1848ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
