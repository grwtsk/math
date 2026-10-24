# ι₁_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14c963e746778d71f0c87be08db807068f06e09a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30bb8bd5-d83d-b89b-2b81-b895fa588d8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f2d9af8-e618-22da-fcd5-13dad4dab3f2",
  "kind": "lemma",
  "lexical_name": "ι₁_π",
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
  "slug": "anonymous--d791cba48584fb10bbc05110",
  "source": {
    "blob": "14c963e746778d71f0c87be08db807068f06e09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 592,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d791cba48584fb10bbc05110ba83d52e768137e6fe1fde403ea70accba197128",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f2d9af8-e618-22da-fcd5-13dad4dab3f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι₁_π : ι₁ K ≫ π K = 𝟙 K := by simp [π]

/-- The left inclusion `K.X i ⟶ K.cylinder.X j` when `c.Rel j i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c963e746778d71f0c87be08db807068f06e09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
