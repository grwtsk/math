# fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe8b7107a0b6146fddd07fabc697c2dbf1c31b55e52389eeb57c46b01e94cd58",
  "kind": "def",
  "lexical_name": "fst",
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
  "slug": "fst--a8a56aff808558fa864c7ffc",
  "source": {
    "blob": "41668896b20765608040f4446e2eac55f8568c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 349,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8a56aff808558fa864c7ffc0281017c4b39a7640e5d423a4a8a570f701aed14",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe8b7107a0b6146fddd07fabc697c2dbf1c31b55e52389eeb57c46b01e94cd58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fst : A × B →ₙₐ[R] A where
  toFun := Prod.fst
  map_zero' := rfl
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  map_mul' _ _ := rfl

/-- The second projection of a product is a non-unital algebra homomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41668896b20765608040f4446e2eac55f8568c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
