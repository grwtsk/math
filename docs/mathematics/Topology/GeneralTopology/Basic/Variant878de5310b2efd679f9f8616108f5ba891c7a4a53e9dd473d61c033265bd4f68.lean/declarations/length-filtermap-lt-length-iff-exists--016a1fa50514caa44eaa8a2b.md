# length_filterMap_lt_length_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad905785646092288944e833d0fefcd1a63ea9db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8edee404-05ee-41dd-390a-e2e9507493fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:203e7add-0b96-2ced-915d-dafac9ad40e2",
  "kind": "theorem",
  "lexical_name": "length_filterMap_lt_length_iff_exists",
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
  "slug": "length-filtermap-lt-length-iff-exists--016a1fa50514caa44eaa8a2b",
  "source": {
    "blob": "ad905785646092288944e833d0fefcd1a63ea9db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:016a1fa50514caa44eaa8a2b8e8b3496861d1ba7b4f790cf70018139ee1dfe09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:203e7add-0b96-2ced-915d-dafac9ad40e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_filterMap_lt_length_iff_exists {xs : List α} {f : α → Option β} :
    (filterMap f xs).length < xs.length ↔ ∃ (x : α) (_ : x ∈ xs), f x = none := by
  induction xs with
  | nil => simp
  | cons x xs ih =>
    simp only [filterMap, mem_cons, exists_prop, exists_eq_or_imp]
    split
    · simp_all only [exists_prop, length_cons, true_or, iff_true]
      have := length_filterMap_le f xs
      omega
    · simp_all

/-! ### reverse -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant878de5310b2efd679f9f8616108f5ba891c7a4a53e9dd473d61c033265bd4f68.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad905785646092288944e833d0fefcd1a63ea9db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
