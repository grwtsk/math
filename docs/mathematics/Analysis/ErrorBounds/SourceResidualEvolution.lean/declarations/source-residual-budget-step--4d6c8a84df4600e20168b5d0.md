# source_residual_budget_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25fd1b3d-f464-24b6-15ad-ca5b4d8887f9",
  "kind": "theorem",
  "lexical_name": "source_residual_budget_step",
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
  "slug": "source-residual-budget-step--4d6c8a84df4600e20168b5d0",
  "source": {
    "blob": "09e5c858dc3a237531d80e5b663d90449e53587f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d6c8a84df4600e20168b5d05ee844de2bf6909e157794a9b61da605a9f5aaae",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/SourceResidualEvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25fd1b3d-f464-24b6-15ad-ca5b4d8887f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_residual_budget_step (weight : ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (source model : ℕ → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (n : ℕ) :
    channelMass weight (sourceResidual source model (n + 1)) ≤
      r * channelMass weight (sourceResidual source model n) +
        channelMass weight (residualForcing gain source model n) :=
  channel_mass_step weight (sourceResidual source model)
    (residualForcing gain source model) gain r weightsNonnegative
    (sourceResidual_evolution gain source model) columnBound n

/-- Separately vanishing injection budgets imply vanishing net forcing.
This is optional: matching persistent source/model injections need not vanish separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/SourceResidualEvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e5c858dc3a237531d80e5b663d90449e53587f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
