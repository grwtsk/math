# noZeroSMulDivisors_of_prime_of_degree_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23fb7e1a6e8c205ecf5945340b239a847702850a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24b6c47d5444bc7d89e2a9b3e80c60212964f44111b48284bf903ac7c04684f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bf72ef2-fbc7-09c4-d5b4-b9cea78c3fa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3afec5e9-b63a-c28b-1927-cbe7d022256d",
  "kind": "theorem",
  "lexical_name": "noZeroSMulDivisors_of_prime_of_degree_ne_zero",
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
  "slug": "nozerosmuldivisors-of-prime-of-degree-ne-zero--85eb3567a45c2d1d404d48fa",
  "source": {
    "blob": "23fb7e1a6e8c205ecf5945340b239a847702850a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 323,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant24b6c47d5444bc7d89e2a9b3e80c60212964f44111b48284bf903ac7c04684f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85eb3567a45c2d1d404d48fa811fb397aba647c1ac6c101ec4f45a817fc98bc0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant24b6c47d5444bc7d89e2a9b3e80c60212964f44111b48284bf903ac7c04684f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3afec5e9-b63a-c28b-1927-cbe7d022256d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noZeroSMulDivisors_of_prime_of_degree_ne_zero [IsDomain R] (hf : Prime f)
    (hf' : f.degree ≠ 0) : NoZeroSMulDivisors R (AdjoinRoot f) :=
  haveI := isDomain_of_prime hf
  NoZeroSMulDivisors.iff_algebraMap_injective.mpr (of.injective_of_degree_ne_zero hf')

end Prime

end CommRing

section Irreducible

variable [Field K] {f : K[X]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant24b6c47d5444bc7d89e2a9b3e80c60212964f44111b48284bf903ac7c04684f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant24b6c47d5444bc7d89e2a9b3e80c60212964f44111b48284bf903ac7c04684f0.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23fb7e1a6e8c205ecf5945340b239a847702850a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
