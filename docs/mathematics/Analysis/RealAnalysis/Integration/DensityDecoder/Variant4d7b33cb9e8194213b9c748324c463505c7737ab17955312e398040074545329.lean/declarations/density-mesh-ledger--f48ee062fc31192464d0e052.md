# density_mesh_ledger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3323f7c4-7021-48d9-310a-91f83687498b",
  "kind": "theorem",
  "lexical_name": "density_mesh_ledger",
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
  "slug": "density-mesh-ledger--f48ee062fc31192464d0e052",
  "source": {
    "blob": "2d000b00ed2c3d18846409259044a65e427c6db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f48ee062fc31192464d0e052e62e4ae004e1a9681bd9df59cf318eaf0f130a73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3323f7c4-7021-48d9-310a-91f83687498b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_mesh_ledger {A : ℝ} (hA : 1 ≤ A) {n : ℕ} (hn : 1 ≤ n) :
    densityReadout A (decodedTest A (mesh A n) n) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1:ℕ):ℝ)*mesh A n)*
        (primeLogPrefix (((j+1:ℕ):ℝ)*mesh A n)-primeLogPrefix ((j:ℝ)*mesh A n)-
          (mesh A n+criticalDecay (((j+1:ℕ):ℝ)*mesh A n)-
            criticalDecay ((j:ℝ)*mesh A n))) :=
  density_decoded_ledger (mesh_pos hA hn).le n (mesh_grid A hn)

/-- Exact source reconstruction, not a fitted definition of the drift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d000b00ed2c3d18846409259044a65e427c6db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
