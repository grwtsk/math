# polar_eq_iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75ba7333e1566c7627b3aa77256659ae4fdd4e3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dd86254-ee57-eaac-25cd-a480d92660ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba6c2720-3226-193b-8c47-9d1ac5721b2b",
  "kind": "theorem",
  "lexical_name": "polar_eq_iInter",
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
  "slug": "polar-eq-iinter--14bc332d8d204dbfccfd02da",
  "source": {
    "blob": "75ba7333e1566c7627b3aa77256659ae4fdd4e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14bc332d8d204dbfccfd02da98171e2726f7e9cea33b7405092bcf0cae3f3c33",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba6c2720-3226-193b-8c47-9d1ac5721b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polar_eq_iInter {s : Set E} : B.polar s = ⋂ x ∈ s, { y : F | ‖B x y‖ ≤ 1 } := by
  ext
  simp only [polar_mem_iff, Set.mem_iInter, Set.mem_setOf_eq]

/-- The map `B.polar : Set E → Set F` forms an order-reversing Galois connection with
`B.flip.polar : Set F → Set E`. We use `OrderDual.toDual` and `OrderDual.ofDual` to express
that `polar` is order-reversing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Polar/Variant230d4225a73a92f55aca4e0d9461853f5e9d652b9b4feede2471999e6eb5ad9e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ba7333e1566c7627b3aa77256659ae4fdd4e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
