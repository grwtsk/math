# IsMinimalPrimaryDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26a33356c7086a4d9fb08e36598cf07fc8289a2ecab2c1ecb98da3818aa2662b",
  "kind": "structure",
  "lexical_name": "IsMinimalPrimaryDecomposition",
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
  "slug": "isminimalprimarydecomposition--c8c0ba46fc56dc96efe8095c",
  "source": {
    "blob": "5d002a86a9b8b251eb45c00496e2189164b8156a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 103,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8c0ba46fc56dc96efe8095cea7890b814e18f0986c407d196142108cea37bc2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26a33356c7086a4d9fb08e36598cf07fc8289a2ecab2c1ecb98da3818aa2662b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsMinimalPrimaryDecomposition
    (N : Submodule R M) (t : Finset (Submodule R M)) where
  inf_eq : t.inf id = N
  primary : ∀ ⦃J⦄, J ∈ t → J.IsPrimary
  distinct : (t : Set (Submodule R M)).Pairwise ((· ≠ ·) on fun J ↦ (J.colon Set.univ).radical)
  minimal : ∀ ⦃J⦄, J ∈ t → ¬ (t.erase J).inf id ≤ J

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lasker/Variant9943ee97f08134dc5ac7be8cd5228c855d5a0192627a93fb36b8e69c388df019.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d002a86a9b8b251eb45c00496e2189164b8156a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
