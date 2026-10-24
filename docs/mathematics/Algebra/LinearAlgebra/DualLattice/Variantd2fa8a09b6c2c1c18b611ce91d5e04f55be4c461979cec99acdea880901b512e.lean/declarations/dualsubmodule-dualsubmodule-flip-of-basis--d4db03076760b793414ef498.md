# dualSubmodule_dualSubmodule_flip_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63811d51628b38bf4be51a08335bb354422c02a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7315896d-f55d-9ddc-2e07-4a287dd0c8f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:515868c2-397d-3e7f-3e50-7edf00a14af6",
  "kind": "lemma",
  "lexical_name": "dualSubmodule_dualSubmodule_flip_of_basis",
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
  "slug": "dualsubmodule-dualsubmodule-flip-of-basis--d4db03076760b793414ef498",
  "source": {
    "blob": "63811d51628b38bf4be51a08335bb354422c02a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4db03076760b793414ef49885996a6976f108586c2bcf2b88f0b6fe86c2b200",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:515868c2-397d-3e7f-3e50-7edf00a14af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dualSubmodule_dualSubmodule_flip_of_basis {ι : Type*} [Finite ι]
    (hB : B.Nondegenerate) (b : Basis ι S M) :
    B.dualSubmodule (B.flip.dualSubmodule (Submodule.span R (Set.range b))) =
      Submodule.span R (Set.range b) := by
  classical
  letI := FiniteDimensional.of_fintype_basis b
  rw [dualSubmodule_span_of_basis _ hB.flip, dualSubmodule_span_of_basis B hB,
    dualBasis_dualBasis_flip B hB]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63811d51628b38bf4be51a08335bb354422c02a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
