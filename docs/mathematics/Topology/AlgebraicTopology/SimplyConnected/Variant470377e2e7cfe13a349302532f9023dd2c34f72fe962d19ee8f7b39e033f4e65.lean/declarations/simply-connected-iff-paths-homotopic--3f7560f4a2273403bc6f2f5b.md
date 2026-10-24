# simply_connected_iff_paths_homotopic'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7889ab26-53f4-048a-a4d2-428dd8714458",
  "kind": "theorem",
  "lexical_name": "simply_connected_iff_paths_homotopic'",
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
  "slug": "simply-connected-iff-paths-homotopic--3f7560f4a2273403bc6f2f5b",
  "source": {
    "blob": "cd879279e19088d8611f0b57b411e2e545536158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 101,
    "path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f7560f4a2273403bc6f2f5bed39eb241e8fe5796b86a5292ea2ef39a6355ca0",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7889ab26-53f4-048a-a4d2-428dd8714458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simply_connected_iff_paths_homotopic' {Y : Type*} [TopologicalSpace Y] :
    SimplyConnectedSpace Y ↔
      PathConnectedSpace Y ∧ ∀ {x y : Y} (p₁ p₂ : Path x y), Path.Homotopic p₁ p₂ := by
  convert simply_connected_iff_paths_homotopic (Y := Y)
  simp [Path.Homotopic.Quotient, Setoid.eq_top_iff]; rfl
#align simply_connected_iff_paths_homotopic' simply_connected_iff_paths_homotopic'
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant470377e2e7cfe13a349302532f9023dd2c34f72fe962d19ee8f7b39e033f4e65.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd879279e19088d8611f0b57b411e2e545536158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
