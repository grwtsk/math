# exists_mem_Ioc_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0f79551e110f648bb3d91097d3e75f6237fb555",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7df031cf-39c1-e20a-16a7-04842d1e52f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ad4cd56-b3f4-1b82-89d2-45063a5abf55",
  "kind": "theorem",
  "lexical_name": "exists_mem_Ioc_zpow",
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
  "slug": "exists-mem-ioc-zpow--30960f9f4e0bfa6dd37c5496",
  "source": {
    "blob": "d0f79551e110f648bb3d91097d3e75f6237fb555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30960f9f4e0bfa6dd37c5496c9de53c63d7b32014e6dabba796b7c4d5243fd7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ad4cd56-b3f4-1b82-89d2-45063a5abf55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_Ioc_zpow (hx : 0 < x) (hy : 1 < y) : ∃ n : ℤ, x ∈ Ioc (y ^ n) (y ^ (n + 1)) :=
  let ⟨m, hle, hlt⟩ := exists_mem_Ico_zpow (inv_pos.2 hx) hy
  have hyp : 0 < y := lt_trans zero_lt_one hy
  ⟨-(m + 1), by rwa [zpow_neg, inv_lt (zpow_pos_of_pos hyp _) hx], by
    rwa [neg_add, neg_add_cancel_right, zpow_neg, le_inv hx (zpow_pos_of_pos hyp _)]⟩
#align exists_mem_Ioc_zpow exists_mem_Ioc_zpow

/-- For any `y < 1` and any positive `x`, there exists `n : ℕ` with `y ^ n < x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0f79551e110f648bb3d91097d3e75f6237fb555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
