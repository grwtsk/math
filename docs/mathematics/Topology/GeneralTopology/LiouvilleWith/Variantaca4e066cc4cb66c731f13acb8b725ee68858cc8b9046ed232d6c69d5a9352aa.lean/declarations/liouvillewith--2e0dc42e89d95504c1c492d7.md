# liouvilleWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d46cfeeb2bceac2e21ced4379eaf38600601963f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca4e066cc4cb66c731f13acb8b725ee68858cc8b9046ed232d6c69d5a9352aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c21fc3bd-c95b-bdaa-7d0e-4c6ca1016d90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdf4486c-d9e1-d00b-13be-f4c506e8e748",
  "kind": "theorem",
  "lexical_name": "liouvilleWith",
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
  "slug": "liouvillewith--2e0dc42e89d95504c1c492d7",
  "source": {
    "blob": "d46cfeeb2bceac2e21ced4379eaf38600601963f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 324,
    "path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variantaca4e066cc4cb66c731f13acb8b725ee68858cc8b9046ed232d6c69d5a9352aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0dc42e89d95504c1c492d7cefb9ecdcb1fcbe9a3a8ce4aeebdb791ab45962c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiouvilleWith/Variantaca4e066cc4cb66c731f13acb8b725ee68858cc8b9046ed232d6c69d5a9352aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdf4486c-d9e1-d00b-13be-f4c506e8e748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem liouvilleWith (hx : Liouville x) (p : ℝ) : LiouvilleWith p x := by
  suffices LiouvilleWith ⌈p⌉₊ x from this.mono (Nat.le_ceil p)
  refine ⟨1, ((eventually_gt_atTop 1).and_frequently (hx.frequently_exists_num ⌈p⌉₊)).mono ?_⟩
  rintro b ⟨_hb, a, hne, hlt⟩
  refine ⟨a, hne, ?_⟩
  rwa [rpow_natCast]

end Liouville

/-- A number satisfies the Liouville condition with any exponent if and only if it is a Liouville
number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiouvilleWith/Variantaca4e066cc4cb66c731f13acb8b725ee68858cc8b9046ed232d6c69d5a9352aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variantaca4e066cc4cb66c731f13acb8b725ee68858cc8b9046ed232d6c69d5a9352aa.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46cfeeb2bceac2e21ced4379eaf38600601963f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
