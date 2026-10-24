# isField_iff_maximalIdeal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2750d0093f4ed55f67d2e09e8c2edb958d8e5112",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ab28b4e-379e-78ef-94e6-e32abb580fef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e4a0dc7-351d-8927-dff8-3bf61998515c",
  "kind": "theorem",
  "lexical_name": "isField_iff_maximalIdeal_eq",
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
  "slug": "isfield-iff-maximalideal-eq--8230d8e7dd0dab86b1803c6b",
  "source": {
    "blob": "2750d0093f4ed55f67d2e09e8c2edb958d8e5112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 82,
    "path": "GRWTSK/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8230d8e7dd0dab86b1803c6bf78f5cb6f426368a309fecd7cb184bfecd6d7637",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e4a0dc7-351d-8927-dff8-3bf61998515c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_iff_maximalIdeal_eq : IsField R ↔ maximalIdeal R = ⊥ :=
  not_iff_not.mp
    ⟨Ring.ne_bot_of_isMaximal_of_not_isField inferInstance, fun h =>
      Ring.not_isField_iff_exists_prime.mpr ⟨_, h, Ideal.IsMaximal.isPrime' _⟩⟩

end IsLocalRing

@[deprecated (since := "2024-11-11")]
alias LocalRing.maximal_ideal_unique := IsLocalRing.maximal_ideal_unique

@[deprecated (since := "2024-11-11")]
alias LocalRing.eq_maximalIdeal := IsLocalRing.eq_maximalIdeal

@[deprecated (since := "2024-11-11")]
alias LocalRing.le_maximalIdeal := IsLocalRing.le_maximalIdeal

@[deprecated (since := "2024-11-11")]
alias LocalRing.mem_maximalIdeal := IsLocalRing.mem_maximalIdeal

@[deprecated (since := "2024-11-11")]
alias LocalRing.not_mem_maximalIdeal := IsLocalRing.not_mem_maximalIdeal

@[deprecated (since := "2024-11-11")]
alias LocalRing.isField_iff_maximalIdeal_eq := IsLocalRing.isField_iff_maximalIdeal_eq

end CommSemiring

section CommRing

variable [CommRing R]

namespace IsLocalRing

variable [IsLocalRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc0f8046cfe6fbd66b5c7049b5fae220825a5e704885fec386a79f7672fe0debd.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2750d0093f4ed55f67d2e09e8c2edb958d8e5112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
