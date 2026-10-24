# measure_null_iff_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2f28c7-d6f2-d072-0556-acc4cfa57a82",
  "kind": "lemma",
  "lexical_name": "measure_null_iff_singleton",
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
  "slug": "measure-null-iff-singleton--732db14833460e18f2a686f7",
  "source": {
    "blob": "a3b7ba710e52e268825f1a4105ebcf3e9fb2737c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:732db14833460e18f2a686f77ea5adb9062b029fecb0fb1fda252431c06c1a9f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2f28c7-d6f2-d072-0556-acc4cfa57a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_null_iff_singleton (hs : s.Countable) : μ s = 0 ↔ ∀ x ∈ s, μ {x} = 0 := by
  rw [← measure_biUnion_null_iff hs, biUnion_of_singleton]

/-- Let `μ` be an (outer) measure; let `s : ι → Set α` be a sequence of sets, `S = ⋃ n, s n`.
If `μ (S \ s n)` tends to zero along some nontrivial filter (usually `Filter.atTop` on `ι = ℕ`),
then `μ S = ⨆ n, μ (s n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4b015fbe62a5f07a7b3117d9da563059687da51565aefb0843a76c2b3ef78e4e.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b7ba710e52e268825f1a4105ebcf3e9fb2737c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
