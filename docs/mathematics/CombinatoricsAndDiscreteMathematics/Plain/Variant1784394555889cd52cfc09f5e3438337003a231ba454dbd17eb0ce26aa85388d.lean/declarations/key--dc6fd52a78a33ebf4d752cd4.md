# Key

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88d8b4bf0dc4762a3aed92bfa658b8253399ba0ecc521294026c8c75744cb617",
  "kind": "structure",
  "lexical_name": "Key",
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
  "slug": "key--dc6fd52a78a33ebf4d752cd4",
  "source": {
    "blob": "82050ef3627fa7f0dcd79f0adb6fc4f485c5e632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc6fd52a78a33ebf4d752cd4e7cf48cb16559db1fff938c44e85bd37b02ce09a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88d8b4bf0dc4762a3aed92bfa658b8253399ba0ecc521294026c8c75744cb617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Key (T : Node Ω C) where
  /-- The domain annotation of the product represented by this key. -/
  domain : Expr S
  /-- The codomain binder body of the product represented by this key. -/
  body : Expr S
  product : T.type = .pi domain body
  /-- The normal domain inhabitant used to instantiate the key's codomain. -/
  argument : Expr S
  normal : Normal argument
  typed : Ω.HasType argument domain
  active : ActiveLayer P C (Ω.profile (body.instantiate argument))

variable {Ω C}
variable (hw : SystemWeaklyNormalizing P)

namespace Key
variable {T : Node Ω C} (a : Key Ω C T)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variant1784394555889cd52cfc09f5e3438337003a231ba454dbd17eb0ce26aa85388d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82050ef3627fa7f0dcd79f0adb6fc4f485c5e632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
