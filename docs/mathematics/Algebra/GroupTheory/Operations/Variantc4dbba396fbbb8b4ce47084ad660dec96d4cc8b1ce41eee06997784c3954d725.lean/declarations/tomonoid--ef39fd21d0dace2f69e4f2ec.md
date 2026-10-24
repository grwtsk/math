# toMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3eadfd16fad9cb0d1a1d0c24dd5fb30ed4a1ac1ab15d49a60b34ba0293e9b803",
  "kind": "instance",
  "lexical_name": "toMonoid",
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
  "slug": "tomonoid--ef39fd21d0dace2f69e4f2ec",
  "source": {
    "blob": "a5571172e066dee37586abc057c9167c7ebf595f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 729,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef39fd21d0dace2f69e4f2ec9801b39ecd4151852aa16b0f49fa08b981cbcbed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3eadfd16fad9cb0d1a1d0c24dd5fb30ed4a1ac1ab15d49a60b34ba0293e9b803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toMonoid {M : Type*} [Monoid M] (S : Submonoid M) : Monoid S :=
  Subtype.coe_injective.monoid (↑) rfl (fun _ _ => rfl) fun _ _ => rfl
#align submonoid.to_monoid Submonoid.toMonoid
#align add_submonoid.to_add_monoid AddSubmonoid.toAddMonoid

/-- A submonoid of a `CommMonoid` is a `CommMonoid`. -/
@[to_additive "An `AddSubmonoid` of an `AddCommMonoid` is an `AddCommMonoid`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5571172e066dee37586abc057c9167c7ebf595f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
