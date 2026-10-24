# measurePreserving_mul_prod_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b431b4bc0f51b61638f97f50660c7a184d302fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:185f6285-8122-164d-e204-cb3652472bf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:095040b4-a373-91f8-0d06-0d27521a37cb",
  "kind": "theorem",
  "lexical_name": "measurePreserving_mul_prod_inv",
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
  "slug": "measurepreserving-mul-prod-inv--0e9f7b7f38e28e937aa7d627",
  "source": {
    "blob": "0b431b4bc0f51b61638f97f50660c7a184d302fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e9f7b7f38e28e937aa7d627d795cbc03a52c1be16b19ac3bbb5d8dfed730400",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095040b4-a373-91f8-0d06-0d27521a37cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_mul_prod_inv [IsMulLeftInvariant ν] :
    MeasurePreserving (fun z : G × G => (z.2 * z.1, z.1⁻¹)) (μ.prod ν) (μ.prod ν) := by
  convert (measurePreserving_prod_inv_mul_swap ν μ).comp (measurePreserving_prod_mul_swap μ ν)
    using 1
  ext1 ⟨x, y⟩
  simp_rw [Function.comp_apply, mul_inv_rev, inv_mul_cancel_right]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b431b4bc0f51b61638f97f50660c7a184d302fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
