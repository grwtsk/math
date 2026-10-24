# commMagma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcabf0bd3e3b7d2d86f34cc0c28b0bc19d0965faa5a46d29955434a65dd79d92",
  "kind": "abbrev",
  "lexical_name": "commMagma",
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
  "slug": "commmagma--61f337f5caf0ad077001da57",
  "source": {
    "blob": "8b4d81026a7c5e40ca912aea33b3a918edc5e0b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 366,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61f337f5caf0ad077001da570f3c212ddadb70856e5f942462a430b0e8b13e7e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcabf0bd3e3b7d2d86f34cc0c28b0bc19d0965faa5a46d29955434a65dd79d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev commMagma [CommMagma M₁] (f : M₁ → M₂) (hf : Surjective f)
    (mul : ∀ x y, f (x * y) = f x * f y) : CommMagma M₂ where
  mul_comm := hf.forall₂.2 fun x y => by rw [← mul, ← mul, mul_comm]

/-- A type endowed with `*` is a commutative semigroup, if it admits a surjective map that preserves
`*` from a commutative semigroup. See note [reducible non-instances]. -/
@[to_additive
"A type endowed with `+` is an additive commutative semigroup, if it admits
a surjective map that preserves `+` from an additive commutative semigroup."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4d81026a7c5e40ca912aea33b3a918edc5e0b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
