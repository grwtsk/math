# hasBasis_twoSidedIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc4f5a633f31f0ee6342675cff8938ac0720f389",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f072662-d831-be0a-aecc-f59f6af8cbe2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4d054c6-8d76-7869-2bed-2d17620b5e7f",
  "kind": "lemma",
  "lexical_name": "hasBasis_twoSidedIdeal",
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
  "slug": "hasbasis-twosidedideal--507462c71fdf899d8adda404",
  "source": {
    "blob": "dc4f5a633f31f0ee6342675cff8938ac0720f389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 298,
    "path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:507462c71fdf899d8adda404949f01770d2be5357628ec2e0853c6f0de7efc6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d054c6-8d76-7869-2bed-2d17620b5e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasBasis_twoSidedIdeal [IsLinearTopology R R] [IsLinearTopology Rᵐᵒᵖ R] :
    (𝓝 (0 : R)).HasBasis (fun I : TwoSidedIdeal R ↦ (I : Set R) ∈ 𝓝 0)
      (fun I : TwoSidedIdeal R ↦ (I : Set R)) :=
  hasBasis_subbimodule R Rᵐᵒᵖ |>.to_hasBasis
    (fun I ⟨hI, hRI, hRI'⟩ ↦ ⟨.mk' I (zero_mem _) add_mem neg_mem (hRI _ _) (hRI' _ _),
      by simpa using hI, by simp⟩)
    (fun I hI ↦ ⟨I.asIdeal.toAddSubgroup,
      ⟨hI, I.mul_mem_left, fun r x hx ↦ I.mul_mem_right x (r.unop) hx⟩, subset_rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearTopology/Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc4f5a633f31f0ee6342675cff8938ac0720f389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
