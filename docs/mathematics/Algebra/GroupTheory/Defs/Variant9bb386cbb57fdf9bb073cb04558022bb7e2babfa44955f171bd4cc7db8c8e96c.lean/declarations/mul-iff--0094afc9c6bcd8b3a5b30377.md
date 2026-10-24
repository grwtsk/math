# mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a5f7421-cab3-5942-99ba-ffe0405b8557",
  "kind": "theorem",
  "lexical_name": "mul_iff",
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
  "slug": "mul-iff--0094afc9c6bcd8b3a5b30377",
  "source": {
    "blob": "8a3293ece653725da3ee1e7d0c0a49fc933d9808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 472,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0094afc9c6bcd8b3a5b30377aad29ae1f72508c794d973d072d6d602d356fa36",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a5f7421-cab3-5942-99ba-ffe0405b8557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_iff [CommMonoid M] {x y : M} : IsUnit (x * y) ↔ IsUnit x ∧ IsUnit y :=
  ⟨fun h => ⟨isUnit_of_mul_isUnit_left h, isUnit_of_mul_isUnit_right h⟩,
   fun h => IsUnit.mul h.1 h.2⟩

section Monoid

variable [Monoid M] {a : M}

/-- The element of the group of units, corresponding to an element of a monoid which is a unit. When
`α` is a `DivisionMonoid`, use `IsUnit.unit'` instead. -/
@[to_additive "The element of the additive group of additive units, corresponding to an element of
an additive monoid which is an additive unit. When `α` is a `SubtractionMonoid`, use
`IsAddUnit.addUnit'` instead."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a3293ece653725da3ee1e7d0c0a49fc933d9808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
