# not_differentiableAt_weierstrass_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ef52a45-402b-9e71-6e4b-3a9be78001ed",
  "kind": "theorem",
  "lexical_name": "not_differentiableAt_weierstrass_seven",
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
  "slug": "not-differentiableat-weierstrass-seven--3dd4a0336a080f8174315568",
  "source": {
    "blob": "3d039fe7399d5773bf04d9bd72575f5fee7bf6ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 294,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dd4a0336a080f8174315568cf8b23717cd2abaf1784adb17560904e082da747",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef52a45-402b-9e71-6e4b-3a9be78001ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_differentiableAt_weierstrass_seven (x : ℝ) :
    ¬ DifferentiableAt ℝ (weierstrass 0.9 7) x := by
  apply not_differentiableAt_weierstrass (by norm_num) (by decide)
  grw [pi_lt_d2]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d039fe7399d5773bf04d9bd72575f5fee7bf6ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
