# project

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5f289431d8107ef320c90769b6466334f5f4b1b6926f74cc024cf56bb77edfc",
  "kind": "def",
  "lexical_name": "project",
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
  "slug": "project--31389503eab37dda7adf2b41",
  "source": {
    "blob": "0d1d5da278eac4a996d4607575b339671733aa8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31389503eab37dda7adf2b4123a1bc1f4a6aff5b9f2dd59141f86c5102a0c8cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5f289431d8107ef320c90769b6466334f5f4b1b6926f74cc024cf56bb77edfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def project (S : BlockSchurSolver G) : (P × U) →ₗ[ℝ] (P × U) where
  toFun x := (x.1 + S.solve x.2, 0)
  map_add' x y := by
    ext <;> simp [add_assoc, add_left_comm, add_comm]
  map_smul' r x := by
    ext <;> simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d1d5da278eac4a996d4607575b339671733aa8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
