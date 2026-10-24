# div_mem_center₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "810e556ea5d3e1607b6e94e10f60a870bcbcb709",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13c22d92-3a55-64b2-989f-321f1c9fb36a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b88d9ade-12e3-e4f3-4593-3eba697b6309",
  "kind": "theorem",
  "lexical_name": "div_mem_center₀",
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
  "slug": "div-mem-center--d474845bb1822d07ab1b7b68",
  "source": {
    "blob": "810e556ea5d3e1607b6e94e10f60a870bcbcb709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d474845bb1822d07ab1b7b68b4e436bf81473cd4bf718f66d007941c9af6f848",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b88d9ade-12e3-e4f3-4593-3eba697b6309`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_mem_center₀ [GroupWithZero M] {a b : M} (ha : a ∈ Set.center M)
    (hb : b ∈ Set.center M) : a / b ∈ Set.center M := by
  rw [div_eq_mul_inv]
  exact mul_mem_center ha (inv_mem_center₀ hb)
#align set.div_mem_center₀ Set.div_mem_center₀

variable (M)

@[to_additive (attr := simp) addCenter_eq_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant2a105803ec625c98e78dc19b50d381265bb83933bddb08e05714fd3f0c03d386.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810e556ea5d3e1607b6e94e10f60a870bcbcb709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
