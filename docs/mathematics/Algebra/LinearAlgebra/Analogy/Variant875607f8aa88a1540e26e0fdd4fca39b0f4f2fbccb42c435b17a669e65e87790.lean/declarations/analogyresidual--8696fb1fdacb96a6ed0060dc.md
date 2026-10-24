# analogyResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4928e27d8dbacdfe4b7babf024fcbf47d0e3bd18fd9d4065222b532a5581bc5b",
  "kind": "def",
  "lexical_name": "analogyResidual",
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
  "slug": "analogyresidual--8696fb1fdacb96a6ed0060dc",
  "source": {
    "blob": "7f4d3e2ade02a6197cca6a445501255965a40cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/Analogy/Variant875607f8aa88a1540e26e0fdd4fca39b0f4f2fbccb42c435b17a669e65e87790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8696fb1fdacb96a6ed0060dc1c68fa29e4fd2b185f522b6cd6f61a7c734a4882",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Analogy/Variant875607f8aa88a1540e26e0fdd4fca39b0f4f2fbccb42c435b17a669e65e87790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4928e27d8dbacdfe4b7babf024fcbf47d0e3bd18fd9d4065222b532a5581bc5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def analogyResidual
    (kernel : PositiveKernel RhetoricalIndex)
    (a b c d : Universe.ConceptId) : ℝ :=
  ‖rhetoricalDisplacement kernel a b - rhetoricalDisplacement kernel c d‖

/-- Normalized translational analogy, absent if either displacement is null. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Analogy/Variant875607f8aa88a1540e26e0fdd4fca39b0f4f2fbccb42c435b17a669e65e87790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Analogy/Variant875607f8aa88a1540e26e0fdd4fca39b0f4f2fbccb42c435b17a669e65e87790.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4d3e2ade02a6197cca6a445501255965a40cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
