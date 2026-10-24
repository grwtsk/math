# FP_partition_regular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5110e84395bf968b4d35e9f67de9f6b0f43532e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8013cd02-af87-8dc1-63b5-73fe0cf8c0d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1ad9a81-3a82-e9b3-5ec0-855524225489",
  "kind": "theorem",
  "lexical_name": "FP_partition_regular",
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
  "slug": "fp-partition-regular--1a461fbd82e12ad06612ece7",
  "source": {
    "blob": "c5110e84395bf968b4d35e9f67de9f6b0f43532e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a461fbd82e12ad06612ece747e97c1605e90fabe1c1bf017b15a4da177eaafe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1ad9a81-3a82-e9b3-5ec0-855524225489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FP_partition_regular {M} [Semigroup M] (a : Stream' M) (s : Set (Set M)) (sfin : s.Finite)
    (scov : FP a ⊆ ⋃₀ s) : ∃ c ∈ s, ∃ b : Stream' M, FP b ⊆ c :=
  let ⟨U, idem, aU⟩ := exists_idempotent_ultrafilter_le_FP a
  let ⟨c, cs, hc⟩ := (Ultrafilter.finite_sUnion_mem_iff sfin).mp (mem_of_superset aU scov)
  ⟨c, cs, exists_FP_of_large U idem c hc⟩

/-- The weak form of **Hindman's theorem**: in any finite cover of a nonempty semigroup, one of the
parts contains an FP-set. -/
@[to_additive exists_FS_of_finite_cover
      "The weak form of **Hindman's theorem**: in any finite cover
      of a nonempty additive semigroup, one of the parts contains an FS-set."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant72287ed5819aabc95dd1f132b94173ecf8dad6d3875ce127f52bd36f117782bf.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5110e84395bf968b4d35e9f67de9f6b0f43532e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
