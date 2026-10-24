# exists_ne_zero_int_vec_norm_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd2eb048de4951a265c1e7b96adbb9358fcfc5af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:578f302a-bfdf-a95d-52d4-ef77c9adc406",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1e68a6f-c8ac-f1d7-43b3-4798bdd13e70",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_int_vec_norm_le'",
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
  "slug": "exists-ne-zero-int-vec-norm-le--2085d47fec35950d57e8c192",
  "source": {
    "blob": "fd2eb048de4951a265c1e7b96adbb9358fcfc5af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2085d47fec35950d57e8c19201b50e93f14890da810cbe8f24b5c1c97a68e950",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1e68a6f-c8ac-f1d7-43b3-4798bdd13e70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_int_vec_norm_le'
    (hn : Fintype.card α < Fintype.card β) (hm : 0 < Fintype.card α) (hA : A ≠ 0) :
    ∃ t : β → ℤ, t ≠ 0 ∧
    A *ᵥ t = 0 ∧ ‖t‖ ≤ (n * ‖A‖) ^ ((m : ℝ) / (n - m)) := by
  simpa [max_eq_right (one_le_norm_A_of_ne_zero A hA)] using
    exists_ne_zero_int_vec_norm_le A hn hm

end Int.Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd2eb048de4951a265c1e7b96adbb9358fcfc5af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
