# dualSubmodule_dualSubmodule_of_basis

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
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b897296-bf71-873c-1b48-574351ed61ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6896c139-2f20-5ee8-6a99-d1a51eda5e94",
  "kind": "lemma",
  "lexical_name": "dualSubmodule_dualSubmodule_of_basis",
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
  "slug": "dualsubmodule-dualsubmodule-of-basis--131c4b45bfd3e40f304641ee",
  "source": {
    "blob": "63811d51628b38bf4be51a08335bb354422c02a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:131c4b45bfd3e40f304641eed820c6bc4e15d2567209d88218492fdaf97e55a0",
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

Occurrence: `result:6896c139-2f20-5ee8-6a99-d1a51eda5e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dualSubmodule_dualSubmodule_of_basis
    {ι} [Finite ι] (hB : B.Nondegenerate) (hB' : B.IsSymm) (b : Basis ι S M) :
    B.dualSubmodule (B.dualSubmodule (Submodule.span R (Set.range b))) =
      Submodule.span R (Set.range b) := by
  classical
  letI := FiniteDimensional.of_fintype_basis b
  rw [dualSubmodule_span_of_basis B hB, dualSubmodule_span_of_basis B hB,
    dualBasis_dualBasis B hB hB']

end BilinForm

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63811d51628b38bf4be51a08335bb354422c02a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
