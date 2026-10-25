# mem_prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bd2825be72e64cf08fdbc48520df16c11ef7e7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f381b508-394e-0ddb-e260-c0c7c8db66fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b95f08d3-ee36-dc08-33cb-6daa8550c0b4",
  "kind": "theorem",
  "lexical_name": "mem_prodMap",
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
  "slug": "mem-prodmap--16cc3d8f5a1a39cc1045abe5",
  "source": {
    "blob": "4bd2825be72e64cf08fdbc48520df16c11ef7e7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 681,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16cc3d8f5a1a39cc1045abe5bb2bc0d636afdc0051425cd08d2a69e891f084ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b95f08d3-ee36-dc08-33cb-6daa8550c0b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_prodMap {f : α →. γ} {g : β →. δ} {x : α × β} {y : γ × δ} :
    y ∈ f.prodMap g x ↔ y.1 ∈ f x.1 ∧ y.2 ∈ g x.2 := by
  trans ∃ hp hq, (f x.1).get hp = y.1 ∧ (g x.2).get hq = y.2
  · simp only [prodMap, Part.mem_mk_iff, And.exists, Prod.ext_iff]
  · simp only [exists_and_left, exists_and_right, (· ∈ ·), Part.Mem]
#align pfun.mem_prod_map PFun.mem_prodMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd2825be72e64cf08fdbc48520df16c11ef7e7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
