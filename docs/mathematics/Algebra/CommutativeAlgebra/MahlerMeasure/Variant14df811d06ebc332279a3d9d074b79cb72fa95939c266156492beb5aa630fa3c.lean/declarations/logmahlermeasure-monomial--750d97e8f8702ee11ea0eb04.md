# logMahlerMeasure_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e9f6805-5a31-d7c2-f0b6-2d64728b56ff",
  "kind": "theorem",
  "lexical_name": "logMahlerMeasure_monomial",
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
  "slug": "logmahlermeasure-monomial--750d97e8f8702ee11ea0eb04",
  "source": {
    "blob": "cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 84,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:750d97e8f8702ee11ea0eb04d8f8ebcae6c3852c7897fdb502d3d650c1ec8502",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e9f6805-5a31-d7c2-f0b6-2d64728b56ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMahlerMeasure_monomial (n : ℕ) (z : ℂ) : (monomial n z).logMahlerMeasure = log ‖z‖ := by
  simp [logMahlerMeasure_def, circleAverage_def, mul_assoc]

/-- The Mahler measure of a polynomial `p` defined as `e ^ (logMahlerMeasure p)` if `p` is nonzero
and `0` otherwise -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
