# diam_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ee5707ee51c5397200418945834adb440a68c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 739,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d336b48-b9f7-fcaf-0e76-f9427d8ca221",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1bc4aea-ccf0-6dc5-e514-cbed8deefdea",
  "kind": "theorem",
  "lexical_name": "diam_Ioo",
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
  "slug": "diam-ioo--bbf48c7cc2bf010d0cc0ec8a",
  "source": {
    "blob": "7ee5707ee51c5397200418945834adb440a68c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 739,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbf48c7cc2bf010d0cc0ec8a011b024e9eca93cbcfdd4fa9444905aa60b9e0bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1bc4aea-ccf0-6dc5-e514-cbed8deefdea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diam_Ioo {a b : ℝ} (h : a ≤ b) : Metric.diam (Ioo a b) = b - a := by
  simp [Metric.diam, ENNReal.toReal_ofReal (sub_nonneg.2 h)]

end Real

end

namespace ENNReal

section truncateToReal

/-- With truncation level `t`, the truncated cast `ℝ≥0∞ → ℝ` is given by `x ↦ (min t x).toReal`.
Unlike `ENNReal.toReal`, this cast is continuous and monotone when `t ≠ ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee5707ee51c5397200418945834adb440a68c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
