# compiledTotalEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:debbbe34aa4771a6006a33ec0305fc9c6335918f6dd91afd6bd9e7d77cde6a46",
  "kind": "def",
  "lexical_name": "compiledTotalEnergy",
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
  "slug": "compiledtotalenergy--a67442e55ae2a9c58dcf5857",
  "source": {
    "blob": "4b4650e8f0c5cabfa06573c7849c3d2e5e1fff49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 13,
    "path": "GRWTSK/Algebra/A76f74a013c0d13a5/Variant23fed8a81c66f16ed6fad5d16fa302f2de89d6d08a4e2311d90b5f74417a521a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a67442e55ae2a9c58dcf5857ed049fe5e228a86da5aa26b77f272797549dc172",
  "verification": {
    "reference": "docs/verification/Algebra/A76f74a013c0d13a5/Variant23fed8a81c66f16ed6fad5d16fa302f2de89d6d08a4e2311d90b5f74417a521a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:debbbe34aa4771a6006a33ec0305fc9c6335918f6dd91afd6bd9e7d77cde6a46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compiledTotalEnergy
    (samples : Fin sampleCount → Residual) : ℝ :=
  ∑ sample, (samples sample).total

end Mathematics.Trajectory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/A76f74a013c0d13a5/Variant23fed8a81c66f16ed6fad5d16fa302f2de89d6d08a4e2311d90b5f74417a521a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/A76f74a013c0d13a5/Variant23fed8a81c66f16ed6fad5d16fa302f2de89d6d08a4e2311d90b5f74417a521a.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4650e8f0c5cabfa06573c7849c3d2e5e1fff49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
