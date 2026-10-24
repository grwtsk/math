# original_proper_diagonal_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0884ea0a-ba28-523f-60bb-a0e94381bde2",
  "kind": "theorem",
  "lexical_name": "original_proper_diagonal_upper",
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
  "slug": "original-proper-diagonal-upper--a5f8f4e3d1a6c688066c4cc9",
  "source": {
    "blob": "d1e7bbf6a20116a287fcf1cf61a1ba4ef727b416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedActualApplication/Variant9d46a7daee3d12aa8aabde8aeacba8deb83d94388a8cbd28487550e3d713c50c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5f8f4e3d1a6c688066c4cc965e5e1fca5cd20db290b36f88a50e5c9eb606228",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedActualApplication/Variant9d46a7daee3d12aa8aabde8aeacba8deb83d94388a8cbd28487550e3d713c50c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0884ea0a-ba28-523f-60bb-a0e94381bde2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_proper_diagonal_upper (A : ℝ) (hA : 91 ≤ A) :
    typeTwoDiagonal A - retainedPrimeDiagonal A ≤
      properLargePowerUpperBudget A (vaughanCutoff A) (sourceKernelCutoff A) := by
  rw [original_proper_diagonal_eq_finite_rows A (by linarith)]
  exact actual_proper_power_diagonal_upper A (vaughanCutoff A) (sourceKernelCutoff A)
    hA (vaughanCutoff_pos A (by linarith))

/-- Quantitative clipped-tail bounds feed the original all-real estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedActualApplication/Variant9d46a7daee3d12aa8aabde8aeacba8deb83d94388a8cbd28487550e3d713c50c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedActualApplication/Variant9d46a7daee3d12aa8aabde8aeacba8deb83d94388a8cbd28487550e3d713c50c.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e7bbf6a20116a287fcf1cf61a1ba4ef727b416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
