# coordinateComplement_diagonal_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc65e76f80cf4686e787fac5d0c4afdfe68ff950",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/LinearAlgebra/FinitePositiveHodgeProjectors.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c3e57ec-385c-917d-7bd6-49edba826a24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffc0075a-dc1e-cbec-439e-f63da46beec1",
  "kind": "theorem",
  "lexical_name": "coordinateComplement_diagonal_comm",
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
  "slug": "coordinatecomplement-diagonal-comm--516ea95e0cc2f8d9879e87fa",
  "source": {
    "blob": "bc65e76f80cf4686e787fac5d0c4afdfe68ff950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/LinearAlgebra/FinitePositiveHodgeProjectors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:516ea95e0cc2f8d9879e87faa1de2db09aa590b4c27551da5fcae2479de73d03",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc0075a-dc1e-cbec-439e-f63da46beec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinateComplement_diagonal_comm (mask : ι → Bool) (a : ι → ℝ) :
    (coordinateComplement mask).comp (diagonal a) =
      (diagonal a).comp (coordinateComplement mask) := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateComplement, diagonal, LinearMap.comp_apply, h]

/-- The Boolean coordinate split defines a concrete Hodge projector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/FinitePositiveHodgeProjectors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/FinitePositiveHodgeProjectors.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc65e76f80cf4686e787fac5d0c4afdfe68ff950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
