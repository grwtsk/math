# combined_projection_row_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b36ff33e-a23b-b8c0-5aee-8503d93e5635",
  "kind": "theorem",
  "lexical_name": "combined_projection_row_inner",
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
  "slug": "combined-projection-row-inner--4655cf0370ac3e6166401f2c",
  "source": {
    "blob": "1b36a5d739e9eaa7ad5067d0514b83b4557697ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4655cf0370ac3e6166401f2c1b60ae0c06a479821beceb6caf223a1bf6ff3387",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b36ff33e-a23b-b8c0-5aee-8503d93e5635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combined_projection_row_inner (hV : Monotone V)
    (K : H →L[ℂ] H) (q : H) (j : ℕ) :
    ⟪stateIncrement (projectedState V q) j, combinedProjectionRow V K q j⟫_ℂ =
      ⟪stateIncrement (projectedState V q) j,
        K (projectedState V q (j + 1) + projectedState V q j)⟫_ℂ := by
  unfold combinedProjectionRow
  rw [← projection_difference_inner_symmetric V]
  rw [projection_difference_fixes_increment V hV]

/-- The finite projected readout is exactly the sum of its complete signed row pairings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b36a5d739e9eaa7ad5067d0514b83b4557697ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
