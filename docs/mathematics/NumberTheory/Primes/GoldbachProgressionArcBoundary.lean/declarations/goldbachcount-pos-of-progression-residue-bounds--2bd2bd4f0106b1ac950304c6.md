# goldbachCount_pos_of_progression_residue_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68024631-50c0-7fac-d059-fbc92845d353",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_progression_residue_bounds",
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
  "slug": "goldbachcount-pos-of-progression-residue-bounds--2bd2bd4f0106b1ac950304c6",
  "source": {
    "blob": "6282342dcf45c447702dd5a10a68b519152a4304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 236,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd2bd4f0106b1ac950304c63e5da214304a85ad3b906906dd3389012de0de33",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68024631-50c0-7fac-d059-fbc92845d353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_progression_residue_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤
      (goldbachProgressionArcModelMajorSum Q N).re)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ x ∈ goldbachClippedRationalArc Q N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin :
      (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArcErrorBudget
          Q N aq residueError) +
        minorError < modelLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_arc_model_bounds
    hscale (goldbachProgressionArcModel N)
    (fun aq =>
      goldbachProgressionArcErrorBudget Q N aq residueError)
    modelLower minorError
  · simpa [goldbachProgressionArcModelMajorSum] using hmodel
  · intro aq haq
    simpa [goldbachProgressionArcResidual,
      goldbachProgressionArcModel] using
      (norm_goldbachProgressionArcResidual_le
        haq (hnonneg aq haq) (hresidue aq haq))
  · exact hminor
  · exact hmargin

/-- The finite local main comparison separately charges the model-to-main
error, every residue-derived arc error, and the complete signed minor error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6282342dcf45c447702dd5a10a68b519152a4304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
