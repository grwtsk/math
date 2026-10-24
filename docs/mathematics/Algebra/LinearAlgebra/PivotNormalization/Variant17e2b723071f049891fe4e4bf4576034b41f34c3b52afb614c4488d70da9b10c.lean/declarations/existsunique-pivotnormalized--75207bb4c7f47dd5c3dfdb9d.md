# existsUnique_pivotNormalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6125fbad-720a-7525-16b9-fd5cae0dcec1",
  "kind": "theorem",
  "lexical_name": "existsUnique_pivotNormalized",
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
  "slug": "existsunique-pivotnormalized--75207bb4c7f47dd5c3dfdb9d",
  "source": {
    "blob": "da3a8285a6c23e1efe44e9c6a559ac41294664d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75207bb4c7f47dd5c3dfdb9d00e7b6a585df83dac2a7ff5cee127a71a05da56e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6125fbad-720a-7525-16b9-fd5cae0dcec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_pivotNormalized (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    ∃! B : Matrix (Fin k) (Fin n) ℝ,
      columnSubmatrix B c = 1 ∧ frameRowSpace B = frameRowSpace A := by
  refine ⟨pivotNormalize A c,
    ⟨pivotNormalize_pivot A c hc, frameRowSpace_pivotNormalize A c hc⟩, ?_⟩
  intro B hB
  apply normalized_eq_of_frameRowSpace_eq B (pivotNormalize A c) c
    hB.1 (pivotNormalize_pivot A c hc)
  rw [hB.2, frameRowSpace_pivotNormalize A c hc]

/-- An already normalized matrix is fixed without an additional choice operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3a8285a6c23e1efe44e9c6a559ac41294664d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
