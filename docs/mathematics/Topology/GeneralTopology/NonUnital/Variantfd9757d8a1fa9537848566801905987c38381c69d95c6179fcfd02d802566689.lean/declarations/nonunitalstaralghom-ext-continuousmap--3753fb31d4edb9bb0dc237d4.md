# NonUnitalStarAlgHom.ext_continuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20898072847cd652759206ccde7a3ebb3910bac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a94d095a-bf9a-387f-9932-0ff74b812489",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b2f5275-51d6-0c5b-29cf-8b52049cf866",
  "kind": "lemma",
  "lexical_name": "NonUnitalStarAlgHom.ext_continuousMap",
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
  "slug": "nonunitalstaralghom-ext-continuousmap--3753fb31d4edb9bb0dc237d4",
  "source": {
    "blob": "20898072847cd652759206ccde7a3ebb3910bac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3753fb31d4edb9bb0dc237d4139e11938a6fb613f96bce0f59fb22ad60e2d419",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2f5275-51d6-0c5b-29cf-8b52049cf866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NonUnitalStarAlgHom.ext_continuousMap [UniqueHom R A]
    (a : A) [CompactSpace (σₙ R a)] (φ ψ : C(σₙ R a, R)₀ →⋆ₙₐ[R] A)
    (hφ : Continuous φ) (hψ : Continuous ψ) (h : φ (.id (σₙ R a)) = ψ (.id (σₙ R a))) :
    φ = ψ :=
  UniqueHom.eq_of_continuous_of_map_id _ φ ψ hφ hψ h

section cfcₙHom

variable {a : A} (ha : p a)

/-- The non-unital star algebra homomorphism underlying an instance of the continuous functional
calculus for non-unital algebras; a version for continuous functions on the quasispectrum.

In this case, the user must supply the fact that `a` satisfies the predicate `p`.

While `NonUnitalContinuousFunctionalCalculus` is stated in terms of these homomorphisms, in practice
the user should instead prefer `cfcₙ` over `cfcₙHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20898072847cd652759206ccde7a3ebb3910bac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
