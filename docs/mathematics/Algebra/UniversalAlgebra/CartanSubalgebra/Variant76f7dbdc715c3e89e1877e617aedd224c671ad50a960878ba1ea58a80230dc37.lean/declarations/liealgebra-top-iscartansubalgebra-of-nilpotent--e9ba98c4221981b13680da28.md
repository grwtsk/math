# LieAlgebra.top_isCartanSubalgebra_of_nilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeff36d4ba6ee22a2ab1b2b006c03543f750f5ab50eb0510db94614a73064a0a",
  "kind": "instance",
  "lexical_name": "LieAlgebra.top_isCartanSubalgebra_of_nilpotent",
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
  "slug": "liealgebra-top-iscartansubalgebra-of-nilpotent--e9ba98c4221981b13680da28",
  "source": {
    "blob": "e7671db290686c9a5b3b42b298a791d496d26904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 117,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9ba98c4221981b13680da281854a88cca31e4540cd037334d177c2826066bbb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aeff36d4ba6ee22a2ab1b2b006c03543f750f5ab50eb0510db94614a73064a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance LieAlgebra.top_isCartanSubalgebra_of_nilpotent [LieAlgebra.IsNilpotent R L] :
    LieSubalgebra.IsCartanSubalgebra (⊤ : LieSubalgebra R L) where
  nilpotent := inferInstance
  self_normalizing := by rw [← top_coe_lieSubalgebra, normalizer_eq_top, top_coe_lieSubalgebra]
#align lie_algebra.top_is_cartan_subalgebra_of_nilpotent LieAlgebra.top_isCartanSubalgebra_of_nilpotent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CartanSubalgebra/Variant76f7dbdc715c3e89e1877e617aedd224c671ad50a960878ba1ea58a80230dc37.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7671db290686c9a5b3b42b298a791d496d26904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
