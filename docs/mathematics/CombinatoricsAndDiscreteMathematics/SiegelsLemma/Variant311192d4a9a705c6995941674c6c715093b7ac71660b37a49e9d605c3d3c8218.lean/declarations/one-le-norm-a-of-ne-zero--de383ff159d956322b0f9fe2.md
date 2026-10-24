# one_le_norm_A_of_ne_zero

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
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5982a099-de44-0b5e-bb10-420824850fd5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:718c71fe-0ee6-7929-4f66-a46e3538cd9d",
  "kind": "lemma",
  "lexical_name": "one_le_norm_A_of_ne_zero",
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
  "slug": "one-le-norm-a-of-ne-zero--de383ff159d956322b0f9fe2",
  "source": {
    "blob": "fd2eb048de4951a265c1e7b96adbb9358fcfc5af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de383ff159d956322b0f9fe2f7f391b978708725dc17a7649e92fb6b713027bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718c71fe-0ee6-7929-4f66-a46e3538cd9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_le_norm_A_of_ne_zero (hA : A ≠ 0) : 1 ≤ ‖A‖ := by
  obtain ⟨i, j, hij⟩ := (Function.ne_iff.mp hA).imp fun _ hi ↦ Function.ne_iff.mp hi
  calc
    1 ≤ ‖A i j‖ := by
      rw [Int.norm_eq_abs, ← Int.cast_abs, ← Int.cast_one, Int.cast_le]
      exact Int.one_le_abs hij
    _ ≤ ‖A‖ := norm_entry_le_entrywise_sup_norm A

-- # Step 2: #S < #T

open Real Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd2eb048de4951a265c1e7b96adbb9358fcfc5af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
