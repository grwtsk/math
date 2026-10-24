# positiveHeightCount_le_coarsePositiveUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4916846-d2d6-9536-3072-28ad944ec276",
  "kind": "theorem",
  "lexical_name": "positiveHeightCount_le_coarsePositiveUpper",
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
  "slug": "positiveheightcount-le-coarsepositiveupper--6d39e64f808202709a6cbf51",
  "source": {
    "blob": "91ceef34cfbd920994350b568fca10b220d69829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d39e64f808202709a6cbf51277cb539e6ce99806bb47b62b8153ba09fd84b70",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4916846-d2d6-9536-3072-28ad944ec276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveHeightCount_le_coarsePositiveUpper (N : ℕ) (hN : 2 ≤ N) :
    positiveHeightCount (N : ℝ) ≤ coarsePositiveUpper N := by
  have hNreal : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hbound : (positiveHeightCount (N : ℝ) : ℝ) ≤
      (coarsePositiveUpper N : ℝ) := by
    calc
      (positiveHeightCount (N : ℝ) : ℝ) ≤ (heightCount (N : ℝ) : ℝ) := by
        exact_mod_cast positiveHeightCount_le_heightCount (N : ℝ)
      _ ≤ (heightCount 2 : ℝ) +
          countingCoefficient * ((N : ℝ) * Real.log (N : ℝ)) :=
        heightCount_le_low_add (N : ℝ) hNreal
      _ ≤ (heightCount 2 : ℝ) + (coarseHighAllowance N : ℝ) :=
        add_le_add_left (highTerm_le_coarseHighAllowance N) _
      _ = (coarsePositiveUpper N : ℝ) := by
        simp [coarsePositiveUpper]
  exact_mod_cast hbound

/-- A sufficiently large known on-line multiplicity credit beats the sourced coarse upper.
The known inventory need not be complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ceef34cfbd920994350b568fca10b220d69829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
