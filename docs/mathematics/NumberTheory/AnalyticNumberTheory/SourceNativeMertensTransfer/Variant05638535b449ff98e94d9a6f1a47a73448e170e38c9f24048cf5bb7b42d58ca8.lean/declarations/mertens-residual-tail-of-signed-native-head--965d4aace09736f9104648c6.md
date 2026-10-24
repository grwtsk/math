# mertens_residual_tail_of_signed_native_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbc701f2ed349d37464737761b8e17d9de8ae2f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5b92c7f-0ab4-3f30-debd-0d57c031d02c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:941e8caf-3322-e341-0fc7-bce2299fa599",
  "kind": "theorem",
  "lexical_name": "mertens_residual_tail_of_signed_native_head",
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
  "slug": "mertens-residual-tail-of-signed-native-head--965d4aace09736f9104648c6",
  "source": {
    "blob": "fbc701f2ed349d37464737761b8e17d9de8ae2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965d4aace09736f9104648c66aca727efd32ea3151d7d20e5d94de92f1ca81ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:941e8caf-3322-e341-0fc7-bce2299fa599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_residual_tail_of_signed_native_head (h : SignedNativeHeadTailUpperBound) :
    MertensResidualTailUpperBound := by
  obtain ⟨K, R, hR, hhead⟩ := h
  refine ⟨max 0 (K + twoLineTailConstant / R ^ 9), le_max_left _ _, R, hR, ?_⟩
  intro A hA
  exact le_trans (mertensResidual_upper_of_signed_head hR hhead A hA) (le_max_right _ _)

/-- The existing eventual-to-all-real consumer gives the unchanged estimate obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc701f2ed349d37464737761b8e17d9de8ae2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
