# featureChannelKernel_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78e7f535-2831-3bea-e381-bd835bac4254",
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
  "slug": "featurechannelkernel-apply--2e75ff658e7bb4c02f0c952b",
  "source": {
    "blob": "e1849aed7c612fa9fce4e289b1ab0a096fec9fae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantcf9ee7df33a51fe90fc8a3e09892e1cf3e303082d4edbce77a932fe98821f014.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e75ff658e7bb4c02f0c952bf837d6c422c7cf7facf53218a97b7cc997fa559d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantcf9ee7df33a51fe90fc8a3e09892e1cf3e303082d4edbce77a932fe98821f014.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78e7f535-2831-3bea-e381-bd835bac4254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantcf9ee7df33a51fe90fc8a3e09892e1cf3e303082d4edbce77a932fe98821f014.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AC3f2603f41e4fb24/Variantcf9ee7df33a51fe90fc8a3e09892e1cf3e303082d4edbce77a932fe98821f014.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1849aed7c612fa9fce4e289b1ab0a096fec9fae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
