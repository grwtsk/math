# eventually_finsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6478a5dbdcf985154971ed17fcde575a9536db1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1349d6c9-40de-343e-ee45-fc0c1c288601",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:deb5297d-c61d-481e-d451-74fe6cace857",
  "kind": "theorem",
  "lexical_name": "eventually_finsupport_subset",
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
  "slug": "eventually-finsupport-subset--5edc2b23b451deb7f0059650",
  "source": {
    "blob": "d6478a5dbdcf985154971ed17fcde575a9536db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 257,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5edc2b23b451deb7f0059650a1c18f39982ee4c1925d7845c944e2074c41619c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deb5297d-c61d-481e-d451-74fe6cace857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_finsupport_subset : ∀ᶠ y in 𝓝 x₀, ρ.finsupport y ⊆ ρ.fintsupport x₀ :=
  (ρ.eventually_fintsupport_subset x₀).mono
    fun y hy ↦ (ρ.finsupport_subset_fintsupport y).trans hy

end fintsupport

/-- If `f` is a partition of unity on `s : Set X` and `g : X → E` is continuous at every point of
the topological support of some `f i`, then `fun x ↦ f i x • g x` is continuous on the whole space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantb30fd4e6cf02688b6361d28338e59fca1ea510409dd679bd255a2c83a9c47379.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6478a5dbdcf985154971ed17fcde575a9536db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
