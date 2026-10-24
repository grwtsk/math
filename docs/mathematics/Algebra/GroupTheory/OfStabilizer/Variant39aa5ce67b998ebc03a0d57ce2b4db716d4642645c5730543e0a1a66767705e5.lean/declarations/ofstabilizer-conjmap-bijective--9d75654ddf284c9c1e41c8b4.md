# ofStabilizer.conjMap_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c80b51d-b5a5-ab0d-b3ea-c6069e6a6aee",
  "kind": "theorem",
  "lexical_name": "ofStabilizer.conjMap_bijective",
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
  "slug": "ofstabilizer-conjmap-bijective--9d75654ddf284c9c1e41c8b4",
  "source": {
    "blob": "526ccce0f2c837696f2f427dcc1d6c73498700c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 179,
    "path": "GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d75654ddf284c9c1e41c8b42777b9ecee66ee77a4c464296c2233f421345060",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c80b51d-b5a5-ab0d-b3ea-c6069e6a6aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofStabilizer.conjMap_bijective : Function.Bijective (conjMap hg) := by
  constructor
  · rintro ⟨x, hx⟩ ⟨y, hy⟩ hxy
    simp only [Subtype.mk_eq_mk]
    apply (MulAction.injective g)
    rwa [← SetLike.coe_eq_coe, conjMap_apply] at hxy
  · intro x
    exact ⟨conjMap _ x, inv_conjMap_comp_apply _ x⟩

/-- Append `a` to `x : Fin n ↪ ofStabilizer G a`  to get an element of `Fin n.succ ↪ α`. -/
@[to_additive
  "Append `a` to `x : Fin n ↪ ofStabilizer G a`  to get an element of `Fin n.succ ↪ α`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant39aa5ce67b998ebc03a0d57ce2b4db716d4642645c5730543e0a1a66767705e5.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526ccce0f2c837696f2f427dcc1d6c73498700c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
