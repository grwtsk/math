# finite_quotient_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23b8ee29422f726d36e1f58c8556f7b357453c03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f02bb963-4f6b-dead-2730-40ec324cf674",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b37f6130-804d-05ee-1818-0ea39940e1b5",
  "kind": "lemma",
  "lexical_name": "finite_quotient_iff",
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
  "slug": "finite-quotient-iff--ef7b2787699b1a0ebd5c8a0d",
  "source": {
    "blob": "23b8ee29422f726d36e1f58c8556f7b357453c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 131,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7b2787699b1a0ebd5c8a0d06f9628c9f1e68a7a116b8ad3550506848d481f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b37f6130-804d-05ee-1818-0ea39940e1b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_quotient_iff [IsNoetherianRing R] [Finite (ResidueField R)] {I : Ideal R} :
    Finite (R ⧸ I) ↔ ∃ n, (maximalIdeal R) ^ n ≤ I :=
  ⟨fun _ ↦ exists_maximalIdeal_pow_le_of_isArtinianRing_quotient I, fun ⟨_, hn⟩ ↦
    .of_surjective _ (Ideal.Quotient.factor_surjective hn)⟩

end IsLocalRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variantdd22433eabcf220ec75aa5ef1e83749d56b379799a0485da2cda910de6ff2384.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b8ee29422f726d36e1f58c8556f7b357453c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
