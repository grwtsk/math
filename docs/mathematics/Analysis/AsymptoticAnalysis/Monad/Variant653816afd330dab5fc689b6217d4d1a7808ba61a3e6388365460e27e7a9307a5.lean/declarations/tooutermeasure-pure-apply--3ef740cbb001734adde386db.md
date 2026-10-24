# toOuterMeasure_pure_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ea68df07c669652c4dd5b8ab21834016a6d1fd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38387189-4f79-c7f6-48a7-f8abc81759e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5a85a88-052a-3ad2-ccf4-98be2a8cf554",
  "kind": "theorem",
  "lexical_name": "toOuterMeasure_pure_apply",
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
  "slug": "tooutermeasure-pure-apply--3ef740cbb001734adde386db",
  "source": {
    "blob": "8ea68df07c669652c4dd5b8ab21834016a6d1fd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef740cbb001734adde386db10b8ba61a52317222a7f92004f93c4585eb24483",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5a85a88-052a-3ad2-ccf4-98be2a8cf554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toOuterMeasure_pure_apply : (pure a).toOuterMeasure s = if a ∈ s then 1 else 0 := by
  refine' (toOuterMeasure_apply (pure a) s).trans _
  split_ifs with ha
  · refine' (tsum_congr fun b => _).trans (tsum_ite_eq a 1)
    exact ite_eq_left_iff.2 fun hb => symm (ite_eq_right_iff.2 fun h => (hb <| h.symm ▸ ha).elim)
  · refine' (tsum_congr fun b => _).trans tsum_zero
    exact ite_eq_right_iff.2 fun hb => ite_eq_right_iff.2 fun h => (ha <| h ▸ hb).elim
#align pmf.to_outer_measure_pure_apply Pmf.toOuterMeasure_pure_apply

variable [MeasurableSpace α]

/-- The measure of a set under `pure a` is `1` for sets containing `a` and `0` otherwise. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ea68df07c669652c4dd5b8ab21834016a6d1fd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
