# jWin_trunc9_vFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f702f4975646ede439df49e223b8e83266f8dca3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b442da9-25d5-1d2d-2dae-35735f9df341",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcbf9991-b209-6c62-804f-a685490dace3",
  "kind": "theorem",
  "lexical_name": "jWin_trunc9_vFlat",
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
  "slug": "jwin-trunc9-vflat--c7ce94d568236ec390e8b252",
  "source": {
    "blob": "f702f4975646ede439df49e223b8e83266f8dca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7ce94d568236ec390e8b252bd06d50f44a510768d9fc2cde3bc608f0a2f8eda",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcbf9991-b209-6c62-804f-a685490dace3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jWin_trunc9_vFlat : jWin (D1trunc 9) 1 vFlat = 12517210259 / 88388425125 := by
  unfold jWin
  have h : (fun r => D1trunc 9 (1 * r) * vConv vFlat r) = fun r => T9 r * (1 - r) := by
    ext r; rw [one_mul, D1trunc9_eq, vConv_vFlat]
  rw [h, integral_T9_flat]
  norm_num

/-! ### the quartic window v(s) = 1 − (7/100)(2s)² − (51/200)(2s)⁴ -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Poly/Varianted114b04bfbb7069735448c416f49517f62b52cf1a7852f43245f386907def41.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f702f4975646ede439df49e223b8e83266f8dca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
