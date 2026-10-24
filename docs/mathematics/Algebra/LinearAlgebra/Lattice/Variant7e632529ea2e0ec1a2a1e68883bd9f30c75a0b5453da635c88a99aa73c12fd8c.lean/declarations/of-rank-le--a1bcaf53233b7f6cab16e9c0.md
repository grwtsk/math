# of_rank_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f291b5d1fa3752061af0c980c2d2262cc60d0702",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:befacd00-f903-fd84-53b0-2e08f3f7f419",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b770e17-7c60-08d4-b558-9814a42d73be",
  "kind": "lemma",
  "lexical_name": "of_rank_le",
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
  "slug": "of-rank-le--a1bcaf53233b7f6cab16e9c0",
  "source": {
    "blob": "f291b5d1fa3752061af0c980c2d2262cc60d0702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1bcaf53233b7f6cab16e9c0eb9616afdd1cf95e5867bb03346450d0e3f0e949",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b770e17-7c60-08d4-b558-9814a42d73be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_rank_le [Module.Finite K V] [IsFractionRing R K] {M : Submodule R V}
    (hfg : M.FG) (hr : Module.rank K V ≤ Module.rank R M) : IsLattice K M where
  fg := hfg
  span_eq_top := by
    simpa using Submodule.span_range_eq_top_of_injective_of_rank_le M.injective_subtype hr

variable [IsPrincipalIdealRing R]

/-- Any lattice over a PID is a free `R`-module.
Note that under our conditions, `NoZeroSMulDivisors R K` simply says that `algebraMap R K` is
injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f291b5d1fa3752061af0c980c2d2262cc60d0702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
