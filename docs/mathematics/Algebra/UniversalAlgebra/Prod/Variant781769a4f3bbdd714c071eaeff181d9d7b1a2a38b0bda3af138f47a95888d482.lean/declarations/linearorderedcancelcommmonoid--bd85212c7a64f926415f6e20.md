# linearOrderedCancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b8005b51c6a6f8edf390c725845cb863517b6880efde74d2938cc8609d0eee2",
  "kind": "instance",
  "lexical_name": "linearOrderedCancelCommMonoid",
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
  "slug": "linearorderedcancelcommmonoid--bd85212c7a64f926415f6e20",
  "source": {
    "blob": "6999f04ffb4eacaea5198a29367b9a3de588711d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd85212c7a64f926415f6e200efc8dc167fd38d2c7106c70bfcc66b35718efc6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b8005b51c6a6f8edf390c725845cb863517b6880efde74d2938cc8609d0eee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance linearOrderedCancelCommMonoid [LinearOrderedCancelCommMonoid α]
    [LinearOrderedCancelCommMonoid β] : LinearOrderedCancelCommMonoid (α ×ₗ β) where
  __ := (inferInstance : LinearOrder (α ×ₗ β))
  __ := (inferInstance : OrderedCancelCommMonoid (α ×ₗ β))

end Lex

end Prod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prod/Variant781769a4f3bbdd714c071eaeff181d9d7b1a2a38b0bda3af138f47a95888d482.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6999f04ffb4eacaea5198a29367b9a3de588711d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
