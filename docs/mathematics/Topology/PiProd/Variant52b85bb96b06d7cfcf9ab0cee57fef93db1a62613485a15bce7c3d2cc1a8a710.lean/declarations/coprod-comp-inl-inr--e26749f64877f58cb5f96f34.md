# coprod_comp_inl_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e343ee3-ecb4-b275-3488-91e8e1a633cb",
  "kind": "lemma",
  "lexical_name": "coprod_comp_inl_inr",
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
  "slug": "coprod-comp-inl-inr--e26749f64877f58cb5f96f34",
  "source": {
    "blob": "4962f4f19d04db13dd05aca3a9e14384d475a9b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 408,
    "path": "GRWTSK/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e26749f64877f58cb5f96f34407c9b68e6f74a3dc87fa0219106ca880c7e1c81",
  "verification": {
    "reference": "docs/verification/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e343ee3-ecb4-b275-3488-91e8e1a633cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coprod_comp_inl_inr [ContinuousAdd M₁] [ContinuousAdd M₂] (f : M × M₁ →L[R] M₂) :
    (f ∘L .inl R M M₁).coprod (f ∘L .inr R M M₁) = f := by
  rw [← ContinuousLinearMap.comp_coprod, coprod_inl_inr, comp_id]

/-- Taking the product of two maps with the same codomain is equivalent to taking the product of
their domains.
See note [bundled maps over different rings] for why separate `R` and `S` semirings are used.

See `ContinuousLinearMap.coprodEquivL` for the `ContinuousLinearEquiv` version.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PiProd/Variant52b85bb96b06d7cfcf9ab0cee57fef93db1a62613485a15bce7c3d2cc1a8a710.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4962f4f19d04db13dd05aca3a9e14384d475a9b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
