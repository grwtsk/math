# MonoidHom.map_finprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cd662e30609b370067171c320027600234b9496",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 690,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07d7975d-985b-3c94-1ad3-ed7e9f971abe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bab5f047-7bd5-1d9e-a8d7-d6fb7817c444",
  "kind": "theorem",
  "lexical_name": "MonoidHom.map_finprod",
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
  "slug": "monoidhom-map-finprod--ee5b98436fbafa0c5e8c253f",
  "source": {
    "blob": "5cd662e30609b370067171c320027600234b9496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 690,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee5b98436fbafa0c5e8c253f581cd07e98b1efb669a42814420712d517d35b0d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bab5f047-7bd5-1d9e-a8d7-d6fb7817c444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHom.map_finprod {f : α → M} (g : M →* N) (hf : (mulSupport f).Finite) :
    g (∏ᶠ i, f i) = ∏ᶠ i, g (f i) :=
  g.map_finprod_pLift f <| hf.preimage <| Equiv.plift.injective.injOn _
#align monoid_hom.map_finprod MonoidHom.map_finprod
#align add_monoid_hom.map_finsum AddMonoidHom.map_finsum

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variant8c596b036f3d4c02eee7d553d9c8464ba02e9b94ad9389650f9da9669a4a45ed.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cd662e30609b370067171c320027600234b9496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
