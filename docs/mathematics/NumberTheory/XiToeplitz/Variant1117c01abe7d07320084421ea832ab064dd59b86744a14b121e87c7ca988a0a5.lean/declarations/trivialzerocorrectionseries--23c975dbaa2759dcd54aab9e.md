# TrivialZeroCorrectionSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3046f8dd3b1faee3d32e3c66b3b9ea855a970de31e4c397c4b1119068c9fc66e",
  "kind": "def",
  "lexical_name": "TrivialZeroCorrectionSeries",
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
  "slug": "trivialzerocorrectionseries--23c975dbaa2759dcd54aab9e",
  "source": {
    "blob": "e80f1381d7e59f8cdbcbcb0062e0d1a209a29bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 105,
    "path": "GRWTSK/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23c975dbaa2759dcd54aab9e37fd7d34b8a820f18c345f73ed6d753a301587bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3046f8dd3b1faee3d32e3c66b3b9ea855a970de31e4c397c4b1119068c9fc66e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TrivialZeroCorrectionSeries : Prop :=
  ∀ x : ℝ, 1 < x →
    HasSum (fun m : ℕ => (x ^ (2 * (m + 1)))⁻¹ / (2 * ((m + 1 : ℕ) : ℝ)))
      (-(1 / 2 : ℝ) * Real.log (1 - (x ^ 2)⁻¹))

/-- The exact arithmetic all-order positivity target, with no premise that zeros lie on the line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/XiToeplitz/Variant1117c01abe7d07320084421ea832ab064dd59b86744a14b121e87c7ca988a0a5.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80f1381d7e59f8cdbcbcb0062e0d1a209a29bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
