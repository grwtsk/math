# featureChannelKernel_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "384ee947414c177856f2e1e47462588edfd047d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b364c94-dbd1-ae8a-9447-b76c578deff5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cae9a492-c147-d8c4-abea-7ccfc192a67c",
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
  "slug": "featurechannelkernel-apply--3caaef53a4b5d140220aad91",
  "source": {
    "blob": "384ee947414c177856f2e1e47462588edfd047d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3caaef53a4b5d140220aad91e5cf52cca8c533152f1ccff90ccc00fc10509dcf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cae9a492-c147-d8c4-abea-7ccfc192a67c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

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

end DAF.Rhetorical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Feature/Variant40c68d600ce166893814af7766acedba23074a0c1d93866842ecde98085135e5.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `384ee947414c177856f2e1e47462588edfd047d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
