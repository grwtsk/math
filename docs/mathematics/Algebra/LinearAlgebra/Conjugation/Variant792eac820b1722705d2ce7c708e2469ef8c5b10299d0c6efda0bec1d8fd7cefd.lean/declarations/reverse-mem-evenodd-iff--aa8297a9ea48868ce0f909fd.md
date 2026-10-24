# reverse_mem_evenOdd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8944a726cf84bb8ac2eb240a32bd44fb8fe9359c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c8ebdbf-5ceb-43b8-c2be-516a95c62273",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70ac6121-6a12-715a-66d7-106c0404ca23",
  "kind": "theorem",
  "lexical_name": "reverse_mem_evenOdd_iff",
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
  "slug": "reverse-mem-evenodd-iff--aa8297a9ea48868ce0f909fd",
  "source": {
    "blob": "8944a726cf84bb8ac2eb240a32bd44fb8fe9359c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 287,
    "path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa8297a9ea48868ce0f909fd8bcb9366cde5d1a2649a901c2a3463e987c3d666",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ac6121-6a12-715a-66d7-106c0404ca23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverse_mem_evenOdd_iff {x : CliffordAlgebra Q} {n : ZMod 2} :
    reverse x ∈ evenOdd Q n ↔ x ∈ evenOdd Q n :=
  SetLike.ext_iff.mp (evenOdd_comap_reverse Q n) x

end Submodule

/-!
### Related properties of the even and odd submodules

TODO: show that these are `iff`s when `Invertible (2 : R)`.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8944a726cf84bb8ac2eb240a32bd44fb8fe9359c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
