# correctedRemainder_sub_anchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caf7fa6f-ac95-c998-d6a6-fd3bfac981d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7254c2af-dac3-a44e-46d6-f99b89b8cab6",
  "kind": "theorem",
  "lexical_name": "correctedRemainder_sub_anchor",
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
  "slug": "correctedremainder-sub-anchor--9e472af0cbe50994787f5077",
  "source": {
    "blob": "81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e472af0cbe50994787f5077f61d36a4df77570b4ab309560c1fe39032ebc05a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7254c2af-dac3-a44e-46d6-f99b89b8cab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedRemainder_sub_anchor {A : Nat} {x : Real}
    (hA : 1 <= A) (hAx : (A : Real) <= x) :
    correctedRemainder x - correctedRemainder A =
      ∫ t in (A : Real)..x, chebyshevRemainder t / t ^ 2 := by
  unfold correctedRemainder firstMertensRemainder chebyshevRemainder
  have h := MathExtras.MertensFirstSharp.firstMertensError_sub_anchor hA hAx
  ring_nf at h ⊢
  linarith

/-- Transport an integral majorant to the corrected remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant8a04aae3cc7fe7d2ebe80fad8ad654626c85cf56f951cab42585c9de359fc5f1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81a45e50e6ee9d4a0d9f59f46f0665f8c4a9b7a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
