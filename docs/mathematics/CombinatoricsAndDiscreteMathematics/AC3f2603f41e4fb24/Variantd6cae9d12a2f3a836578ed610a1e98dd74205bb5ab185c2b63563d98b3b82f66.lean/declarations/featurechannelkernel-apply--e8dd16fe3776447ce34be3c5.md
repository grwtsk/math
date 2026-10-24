# featureChannelKernel_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1fe84cb2f76586e11ce82329bdcf76647b965db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6cae9d12a2f3a836578ed610a1e98dd74205bb5ab185c2b63563d98b3b82f66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:529f05dd-4a6e-1c68-4ccc-2b99ac429782",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bb0d8a7-3906-deb2-9400-593cd4b7ea23",
  "kind": "theorem",
  "lexical_name": "featureChannelKernel_apply",
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
  "slug": "featurechannelkernel-apply--e8dd16fe3776447ce34be3c5",
  "source": {
    "blob": "c1fe84cb2f76586e11ce82329bdcf76647b965db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantd6cae9d12a2f3a836578ed610a1e98dd74205bb5ab185c2b63563d98b3b82f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8dd16fe3776447ce34be3c501eaf4bd64ce3e1a66805f925b5d5eaa2196fe88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantd6cae9d12a2f3a836578ed610a1e98dd74205bb5ab185c2b63563d98b3b82f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bb0d8a7-3906-deb2-9400-593cd4b7ea23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem featureChannelKernel_apply
    {Channel : Type} [Fintype Channel]
    (channels : Channel → FeatureKernelChannel Index)
    (i j : Index) :
    featureChannelKernel channels i j =
      ∑ channel, (channels channel).weight *
        (channels channel).kernel i j := by
  change (∑ channel, (channels channel).weighted.matrix) i j = _
  rw [Matrix.sum_apply]
  apply Finset.sum_congr rfl
  intro channel _
  simp [FeatureKernelChannel.weighted, Algebra.smul_def]

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantd6cae9d12a2f3a836578ed610a1e98dd74205bb5ab185c2b63563d98b3b82f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantd6cae9d12a2f3a836578ed610a1e98dd74205bb5ab185c2b63563d98b3b82f66.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1fe84cb2f76586e11ce82329bdcf76647b965db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
