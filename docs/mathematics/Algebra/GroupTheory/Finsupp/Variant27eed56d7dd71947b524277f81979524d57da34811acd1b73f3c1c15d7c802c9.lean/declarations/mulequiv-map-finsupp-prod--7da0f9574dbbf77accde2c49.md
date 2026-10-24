# MulEquiv.map_finsupp_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1895ba4f-2f3f-28ca-fb92-e87a2d53e14e",
  "kind": "theorem",
  "lexical_name": "MulEquiv.map_finsupp_prod",
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
  "slug": "mulequiv-map-finsupp-prod--7da0f9574dbbf77accde2c49",
  "source": {
    "blob": "9ffedf06f121cef695d6ce1596ce11a45181e110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 235,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant27eed56d7dd71947b524277f81979524d57da34811acd1b73f3c1c15d7c802c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7da0f9574dbbf77accde2c49de82d68281fd112e9e64733263e6016270ec4f50",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variant27eed56d7dd71947b524277f81979524d57da34811acd1b73f3c1c15d7c802c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1895ba4f-2f3f-28ca-fb92-e87a2d53e14e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem MulEquiv.map_finsupp_prod [Zero M] [CommMonoid N] [CommMonoid P] (h : N ≃* P)
    (f : α →₀ M) (g : α → M → N) : h (f.prod g) = f.prod fun a b => h (g a b) :=
  map_finsupp_prod h f g
#align mul_equiv.map_finsupp_prod MulEquiv.map_finsupp_prod
#align add_equiv.map_finsupp_sum AddEquiv.map_finsupp_sum

/-- Deprecated, use `_root_.map_finsupp_prod` instead. -/
@[to_additive (attr := deprecated)
  "Deprecated, use `_root_.map_finsupp_sum` instead."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variant27eed56d7dd71947b524277f81979524d57da34811acd1b73f3c1c15d7c802c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variant27eed56d7dd71947b524277f81979524d57da34811acd1b73f3c1c15d7c802c9.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ffedf06f121cef695d6ce1596ce11a45181e110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
