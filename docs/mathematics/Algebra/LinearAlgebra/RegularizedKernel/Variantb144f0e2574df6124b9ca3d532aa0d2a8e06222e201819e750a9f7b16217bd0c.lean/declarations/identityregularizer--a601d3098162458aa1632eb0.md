# identityRegularizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0eb0b4bca27f0cc22e4fb3c5573b849d33a2419db47535e2901e687ca955af3d",
  "kind": "def",
  "lexical_name": "identityRegularizer",
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
  "slug": "identityregularizer--a601d3098162458aa1632eb0",
  "source": {
    "blob": "1088dfcba2ad6394b1eef1c6fde1baf318c6a582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 22,
    "path": "GRWTSK/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a601d3098162458aa1632eb0cfef35a7fa28fbbb6ba7016de91801b294ae0359",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0eb0b4bca27f0cc22e4fb3c5573b849d33a2419db47535e2901e687ca955af3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identityRegularizer (epsilon : ℝ) : Matrix Index Index ℂ :=
  Matrix.diagonal fun _ ↦ (epsilon : ℂ)

/-- A positive real diagonal is positive definite over `ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1088dfcba2ad6394b1eef1c6fde1baf318c6a582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
