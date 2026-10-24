# exists_isClopen_lower_of_not_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e20e89838f85af0db8be84bb30cfde6db31f646c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87a3eda4-ed65-3e0e-3a20-879434ccdf5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcd7b9fa-a394-e58d-a9f7-9d959d24ccff",
  "kind": "theorem",
  "lexical_name": "exists_isClopen_lower_of_not_le",
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
  "slug": "exists-isclopen-lower-of-not-le--2c0fab796c7f2ffeea54fe19",
  "source": {
    "blob": "e20e89838f85af0db8be84bb30cfde6db31f646c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0fab796c7f2ffeea54fe195961c534405e3eddacabd6f6c711d16709e2f036",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd7b9fa-a394-e58d-a9f7-9d959d24ccff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isClopen_lower_of_not_le (h : ¬x ≤ y) :
    ∃ U : Set α, IsClopen U ∧ IsLowerSet U ∧ x ∉ U ∧ y ∈ U :=
  let ⟨U, hU, hU', hx, hy⟩ := exists_isClopen_upper_of_not_le h
  ⟨Uᶜ, hU.compl, hU'.compl, Classical.not_not.2 hx, hy⟩

end Preorder

section PartialOrder

variable [PartialOrder α] [PriestleySpace α] {x y : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e20e89838f85af0db8be84bb30cfde6db31f646c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
