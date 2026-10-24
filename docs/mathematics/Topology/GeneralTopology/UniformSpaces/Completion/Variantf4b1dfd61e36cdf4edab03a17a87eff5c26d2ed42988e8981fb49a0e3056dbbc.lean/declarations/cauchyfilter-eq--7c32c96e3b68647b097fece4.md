# cauchyFilter_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7e1caa48b7abeb673eed6a7d7f69cbbbf4cea8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dee36136-af28-e953-3e49-c5ed04c9c3d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:776d61a5-8ccd-296b-bbe8-f7dc7f3c4d3f",
  "kind": "theorem",
  "lexical_name": "cauchyFilter_eq",
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
  "slug": "cauchyfilter-eq--7c32c96e3b68647b097fece4",
  "source": {
    "blob": "e7e1caa48b7abeb673eed6a7d7f69cbbbf4cea8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c32c96e3b68647b097fece48a9065c79738a990f4bf17ed24df22185184c469",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:776d61a5-8ccd-296b-bbe8-f7dc7f3c4d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchyFilter_eq {α : Type*} [UniformSpace α] [CompleteSpace α] [T0Space α]
    {f g : CauchyFilter α} :
    haveI := f.2.1.nonempty; lim f.1 = lim g.1 ↔ Inseparable f g := by
  rw [← inseparable_iff_eq, inseparable_lim_iff]

section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantf4b1dfd61e36cdf4edab03a17a87eff5c26d2ed42988e8981fb49a0e3056dbbc.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7e1caa48b7abeb673eed6a7d7f69cbbbf4cea8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
