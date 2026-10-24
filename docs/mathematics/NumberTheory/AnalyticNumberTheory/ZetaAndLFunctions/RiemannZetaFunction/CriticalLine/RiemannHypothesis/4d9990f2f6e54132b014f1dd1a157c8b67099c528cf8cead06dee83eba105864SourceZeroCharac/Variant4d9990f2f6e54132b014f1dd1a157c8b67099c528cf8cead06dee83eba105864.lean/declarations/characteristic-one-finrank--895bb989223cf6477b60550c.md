# characteristic_one_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70b38f84e7a7578eaf3199b8ca09adc193e2bb7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:886d7c62-9e72-d725-4975-67a6498f98eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f50d8e41-0567-fa56-c0b6-227c596ade34",
  "kind": "theorem",
  "lexical_name": "characteristic_one_finrank",
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
  "slug": "characteristic-one-finrank--895bb989223cf6477b60550c",
  "source": {
    "blob": "70b38f84e7a7578eaf3199b8ca09adc193e2bb7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895bb989223cf6477b60550c3b377e3a98ac7865d657efe4220179e063190ead",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f50d8e41-0567-fa56-c0b6-227c596ade34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characteristic_one_finrank : Module.finrank ℂ CharacteristicOne = 2 := by
  calc
    _ = ((X - C (1 : ℂ)) ^ 2).natDegree :=
      (AdjoinRoot.powerBasis' ((monic_X_sub_C (1 : ℂ)).pow 2)).finrank
    _ = 2 := by rw [natDegree_pow, natDegree_X_sub_C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70b38f84e7a7578eaf3199b8ca09adc193e2bb7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
