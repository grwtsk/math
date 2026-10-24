# EdgeRelaxation.relaxed_pole_shell_superpose_to_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1d053f5-7328-4a7b-a7fc-1ee7aaf48d48",
  "kind": "theorem",
  "lexical_name": "EdgeRelaxation.relaxed_pole_shell_superpose_to_top",
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
  "slug": "edgerelaxation-relaxed-pole-shell-superpose-to-top--7b4ad55feaf9f7231f3769d5",
  "source": {
    "blob": "c9631019b09e7e1fe3096c03d905808778470c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 595,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant7d7b0527133a40c35131aad41227a4a7aedeed986a20182f73673e568ed534c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b4ad55feaf9f7231f3769d5e277449fce7cc1d99d7ae6aecb1ec8a1887ebfab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant7d7b0527133a40c35131aad41227a4a7aedeed986a20182f73673e568ed534c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d053f5-7328-4a7b-a7fc-1ee7aaf48d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EdgeRelaxation.relaxed_pole_shell_superpose_to_top :
    EdgeRelaxation.addDensityVec
      (EdgeRelaxation.relax EdgeRelaxation.centeredPole)
      (EdgeRelaxation.relax EdgeRelaxation.boundaryShell) =
      EdgeRelaxation.densityTop := by
  funext p
  cases p <;> decide

/-- The centered pole relaxes into a non-crisp density at every coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant7d7b0527133a40c35131aad41227a4a7aedeed986a20182f73673e568ed534c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant7d7b0527133a40c35131aad41227a4a7aedeed986a20182f73673e568ed534c8.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9631019b09e7e1fe3096c03d905808778470c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
