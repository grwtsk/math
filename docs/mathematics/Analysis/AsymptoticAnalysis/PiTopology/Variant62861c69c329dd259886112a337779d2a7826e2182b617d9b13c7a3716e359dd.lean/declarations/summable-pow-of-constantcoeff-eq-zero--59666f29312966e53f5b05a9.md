# summable_pow_of_constantCoeff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcde89c7724d56615e1558fa63832a25fe63c49d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:136dbce4-9fc1-44ba-3d99-4a0590356581",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7d33185-0534-4580-2412-7f06db98f494",
  "kind": "theorem",
  "lexical_name": "summable_pow_of_constantCoeff_eq_zero",
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
  "slug": "summable-pow-of-constantcoeff-eq-zero--59666f29312966e53f5b05a9",
  "source": {
    "blob": "fcde89c7724d56615e1558fa63832a25fe63c49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59666f29312966e53f5b05a9768da976a377c51a26913aaa127c2015593bb90f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d33185-0534-4580-2412-7f06db98f494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_pow_of_constantCoeff_eq_zero {f : PowerSeries R} (h : f.constantCoeff = 0) :
    Summable (f ^ ·) :=
  MvPowerSeries.WithPiTopology.summable_pow_of_constantCoeff_eq_zero h

section GeomSeries
variable {R : Type*} [TopologicalSpace R] [Ring R] [IsTopologicalRing R] [T2Space R]
variable {f : PowerSeries R}

/-- Formula for geometric series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcde89c7724d56615e1558fa63832a25fe63c49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
