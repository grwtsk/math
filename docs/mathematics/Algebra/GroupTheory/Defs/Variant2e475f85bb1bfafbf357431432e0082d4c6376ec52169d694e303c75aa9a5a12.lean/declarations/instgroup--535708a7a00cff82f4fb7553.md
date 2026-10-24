# instGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de5cd222bb1a00e274a73ac2d3bb017083591ca279cc42e089b6f9974e8e3976",
  "kind": "instance",
  "lexical_name": "instGroup",
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
  "slug": "instgroup--535708a7a00cff82f4fb7553",
  "source": {
    "blob": "20db8400f68e2ae2f7051a5dee38dde33454b795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 268,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:535708a7a00cff82f4fb75536f6d28a4c7e122a78c603d255b1e6d59787bb9b3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de5cd222bb1a00e274a73ac2d3bb017083591ca279cc42e089b6f9974e8e3976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instGroup : Group αˣ where
  inv_mul_cancel := fun u => ext u.inv_val

/-- Units of a commutative monoid form a commutative group. -/
@[to_additive /-- Additive units of an additive commutative monoid form
an additive commutative group. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20db8400f68e2ae2f7051a5dee38dde33454b795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
