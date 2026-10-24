# rank_eq_iff_exists_columnMinor_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8402c6c2-a0b8-8e49-56c1-67ff70538e17",
  "kind": "theorem",
  "lexical_name": "rank_eq_iff_exists_columnMinor_ne_zero",
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
  "slug": "rank-eq-iff-exists-columnminor-ne-zero--47e023bc8ca9048ab7ec0048",
  "source": {
    "blob": "adf3edbd6fd3f1bdd6ef017d7b952795ca9a265b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e023bc8ca9048ab7ec0048b4a7c8a7a74ed104c88a80d434fe0894c822ca2e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8402c6c2-a0b8-8e49-56c1-67ff70538e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_eq_iff_exists_columnMinor_ne_zero (A : Matrix (Fin k) (Fin n) ℝ) :
    A.rank = k ↔ ∃ c : Fin k → Fin n, columnMinor A c ≠ 0 := by
  constructor
  · exact exists_columnMinor_ne_zero_of_rank A
  · rintro ⟨c, hc⟩
    exact rank_eq_of_columnMinor_ne_zero A c hc

/-- The rank criterion uses increasing minors and remains valid when k exceeds n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adf3edbd6fd3f1bdd6ef017d7b952795ca9a265b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
