# transported_base_case_euler_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8917c39ed95f4e9fde33381dbecc0da18c3ed322",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c580b85-1e02-cc4d-bb97-b5b7778d97dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3675975b-3f1d-d79b-c253-b29ae121ce9f",
  "kind": "theorem",
  "lexical_name": "transported_base_case_euler_nonzero",
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
  "slug": "transported-base-case-euler-nonzero--8f1e648e287a187bfe122f17",
  "source": {
    "blob": "8917c39ed95f4e9fde33381dbecc0da18c3ed322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1e648e287a187bfe122f17860abb89a6f443994b77c23d8127e936d6a8e1ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3675975b-3f1d-d79b-c253-b29ae121ce9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transported_base_case_euler_nonzero
    (T : TransportedBaseCaseEuler) :
    T.transport.eulerTransport.targetEuler.value ≠ 0 := by
  intro hTarget
  have hEq :
      T.transport.eulerTransport.targetEuler.value =
        T.transport.eulerTransport.sourceEuler.value :=
    rodgers_tao_transport_preserves_euler_characteristic T.transport
  apply T.source.euler_nonzero
  rw [← T.source_euler_matches]
  rw [← hEq]
  exact hTarget

/--
Full base-case-to-critical-line propagation as contract composition.

This record does not construct the fixed tensor or boundary alignment; it only
stores the supplied bridge proposition and conclusion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8917c39ed95f4e9fde33381dbecc0da18c3ed322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
