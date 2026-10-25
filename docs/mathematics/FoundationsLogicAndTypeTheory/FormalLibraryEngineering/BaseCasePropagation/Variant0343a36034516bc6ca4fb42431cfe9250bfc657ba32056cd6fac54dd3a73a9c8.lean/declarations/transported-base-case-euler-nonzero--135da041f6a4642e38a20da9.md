# transported_base_case_euler_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ae735e7-a70b-02f1-5c44-7f0d2fd44240",
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
  "slug": "transported-base-case-euler-nonzero--135da041f6a4642e38a20da9",
  "source": {
    "blob": "51da8d446eb96b368a9fa943689245cf0a636663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variant0343a36034516bc6ca4fb42431cfe9250bfc657ba32056cd6fac54dd3a73a9c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:135da041f6a4642e38a20da92110c7ba6dfe0a7da6d0caed8e7dfc4e228e4b7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variant0343a36034516bc6ca4fb42431cfe9250bfc657ba32056cd6fac54dd3a73a9c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ae735e7-a70b-02f1-5c44-7f0d2fd44240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variant0343a36034516bc6ca4fb42431cfe9250bfc657ba32056cd6fac54dd3a73a9c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCasePropagation/Variant0343a36034516bc6ca4fb42431cfe9250bfc657ba32056cd6fac54dd3a73a9c8.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51da8d446eb96b368a9fa943689245cf0a636663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
