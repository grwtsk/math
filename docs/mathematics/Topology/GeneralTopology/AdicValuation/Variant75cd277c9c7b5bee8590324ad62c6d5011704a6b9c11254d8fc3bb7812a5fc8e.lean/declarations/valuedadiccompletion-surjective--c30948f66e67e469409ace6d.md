# valuedAdicCompletion_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00974fbd43c403d66da8c5d54cc4b9564d357fdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 789,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a862a530-5316-900b-a3a5-1236a07fb5a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2adde4c5-a8c7-b9fc-1d7c-7760d460075b",
  "kind": "lemma",
  "lexical_name": "valuedAdicCompletion_surjective",
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
  "slug": "valuedadiccompletion-surjective--c30948f66e67e469409ace6d",
  "source": {
    "blob": "00974fbd43c403d66da8c5d54cc4b9564d357fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 794,
    "line": 789,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c30948f66e67e469409ace6dff2cef94b7eaad333ff61c4f4f557805f88329fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2adde4c5-a8c7-b9fc-1d7c-7760d460075b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valuedAdicCompletion_surjective :
    Function.Surjective (Valued.v : (v.adicCompletion K) → ℤᵐ⁰) := by
  have h : Function.Surjective (Valued.v : (v.valuation K).Completion → ℤᵐ⁰) :=
    Valued.valuedCompletion_surjective_iff.mpr <| .of_comp (v.valuation_surjective K)
  exact h.comp (adicCompletion.toCompletion_surjective K v)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant75cd277c9c7b5bee8590324ad62c6d5011704a6b9c11254d8fc3bb7812a5fc8e.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00974fbd43c403d66da8c5d54cc4b9564d357fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
