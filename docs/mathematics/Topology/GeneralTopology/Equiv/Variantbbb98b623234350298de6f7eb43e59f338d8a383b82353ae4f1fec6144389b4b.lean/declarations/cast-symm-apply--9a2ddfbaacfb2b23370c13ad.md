# cast_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f9f59081ff9dac97aee65ffab97947228feb8fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbb98b623234350298de6f7eb43e59f338d8a383b82353ae4f1fec6144389b4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:093c717b-9125-b641-36b7-e69f921d5990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb2fac84-9fbb-2333-a7cf-2b65be38e111",
  "kind": "theorem",
  "lexical_name": "cast_symm_apply",
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
  "slug": "cast-symm-apply--9a2ddfbaacfb2b23370c13ad",
  "source": {
    "blob": "7f9f59081ff9dac97aee65ffab97947228feb8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 369,
    "path": "GRWTSK/Topology/GeneralTopology/Equiv/Variantbbb98b623234350298de6f7eb43e59f338d8a383b82353ae4f1fec6144389b4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a2ddfbaacfb2b23370c13ad2d9588807e8665f58b2bc3df4531cdcc9f776ea5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equiv/Variantbbb98b623234350298de6f7eb43e59f338d8a383b82353ae4f1fec6144389b4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb2fac84-9fbb-2333-a7cf-2b65be38e111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_symm_apply {ι : Type*} {A : ι → Type*} [(i : ι) → Semiring (A i)]
    [(i : ι) → Algebra R (A i)] [(i : ι) → TopologicalSpace (A i)] {i j : ι} (h : i = j)
    (x : A j) : (cast (R := R) h).symm x = Equiv.cast (congrArg A h.symm) x := rfl

end ContinuousAlgEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equiv/Variantbbb98b623234350298de6f7eb43e59f338d8a383b82353ae4f1fec6144389b4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equiv/Variantbbb98b623234350298de6f7eb43e59f338d8a383b82353ae4f1fec6144389b4b.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9f59081ff9dac97aee65ffab97947228feb8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
