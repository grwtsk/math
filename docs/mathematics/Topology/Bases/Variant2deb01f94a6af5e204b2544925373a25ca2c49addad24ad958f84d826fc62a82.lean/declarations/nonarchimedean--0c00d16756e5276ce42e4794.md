# nonarchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56c3c35c7570ac65a4237b8f57334716528560f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18a82525-7a7c-cc39-a9dc-c56027ef5362",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ea267a4-0fb6-7757-e524-b62a9a52c51f",
  "kind": "theorem",
  "lexical_name": "nonarchimedean",
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
  "slug": "nonarchimedean--0c00d16756e5276ce42e4794",
  "source": {
    "blob": "56c3c35c7570ac65a4237b8f57334716528560f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 188,
    "path": "GRWTSK/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c00d16756e5276ce42e47946c3c9c7fafb73e9dbb13b39d624fbe9b9c7ee00a",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ea267a4-0fb6-7757-e524-b62a9a52c51f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonarchimedean : @NonarchimedeanRing A _ hB.topology := by
  let := hB.topology
  constructor
  intro U hU
  obtain ⟨i, -, hi : (B i : Set A) ⊆ U⟩ := hB.hasBasis_nhds_zero.mem_iff.mp hU
  exact ⟨hB.openAddSubgroup i, hi⟩

end RingSubgroupsBasis

variable {ι R A : Type*} [CommRing R] [CommRing A] [Algebra R A]

/-- A family of submodules in a commutative `R`-algebra `A` is a submodules basis if it satisfies
some axioms ensuring there is a topology on `A` which is compatible with the ring structure and
admits this family as a basis of neighborhoods of zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant2deb01f94a6af5e204b2544925373a25ca2c49addad24ad958f84d826fc62a82.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c3c35c7570ac65a4237b8f57334716528560f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
