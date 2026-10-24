# toIdeal_iInf₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cea8bbf0a7101be5381a7b05e2e89d7659e1231d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:395f8404-b903-dbaf-662f-beede77d23a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ba0d66b-5297-e476-0431-619b7cb6ecda",
  "kind": "theorem",
  "lexical_name": "toIdeal_iInf₂",
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
  "slug": "toideal-iinf--12cfea2b9060b07647e37f70",
  "source": {
    "blob": "cea8bbf0a7101be5381a7b05e2e89d7659e1231d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 409,
    "path": "GRWTSK/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12cfea2b9060b07647e37f70c333ad043866e9e6dc58a3639abc7097469680df",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ba0d66b-5297-e476-0431-619b7cb6ecda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toIdeal_iInf₂ {κ : Sort*} {κ' : κ → Sort*} (s : ∀ i, κ' i → HomogeneousIdeal 𝒜) :
    (⨅ (i) (j), s i j).toIdeal = ⨅ (i) (j), (s i j).toIdeal := by
  simp_rw [toIdeal_iInf]
#align homogeneous_ideal.to_ideal_infi₂ HomogeneousIdeal.toIdeal_iInf₂

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea8bbf0a7101be5381a7b05e2e89d7659e1231d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
