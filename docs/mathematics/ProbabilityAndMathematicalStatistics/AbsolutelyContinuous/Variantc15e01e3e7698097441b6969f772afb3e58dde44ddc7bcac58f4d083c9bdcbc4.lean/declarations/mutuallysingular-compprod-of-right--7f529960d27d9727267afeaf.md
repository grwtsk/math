# MutuallySingular.compProd_of_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5397b31e0bacc05d0cdfe3a45afc0f1ddca2c80c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14bcdd49-6fca-db2e-7d92-874788db7365",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b82fbdf8-5b52-f94e-6f38-97d63f182278",
  "kind": "lemma",
  "lexical_name": "MutuallySingular.compProd_of_right'",
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
  "slug": "mutuallysingular-compprod-of-right--7f529960d27d9727267afeaf",
  "source": {
    "blob": "5397b31e0bacc05d0cdfe3a45afc0f1ddca2c80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f529960d27d9727267afeaffeca8adc7dee204be3bb0a31cb292a65b6707aba",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b82fbdf8-5b52-f94e-6f38-97d63f182278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MutuallySingular.compProd_of_right' (μ ν : Measure α) (hκη : ∀ᵐ a ∂ν, κ a ⟂ₘ η a) :
    μ ⊗ₘ κ ⟂ₘ ν ⊗ₘ η := by
  refine (MutuallySingular.compProd_of_right _ _ ?_).symm
  simp_rw [MutuallySingular.comm, hκη]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variantc15e01e3e7698097441b6969f772afb3e58dde44ddc7bcac58f4d083c9bdcbc4.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5397b31e0bacc05d0cdfe3a45afc0f1ddca2c80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
