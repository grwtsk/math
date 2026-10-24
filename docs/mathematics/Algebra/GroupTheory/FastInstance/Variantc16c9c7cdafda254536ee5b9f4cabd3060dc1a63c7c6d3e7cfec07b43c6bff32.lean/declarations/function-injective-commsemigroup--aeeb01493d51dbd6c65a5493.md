# Function.Injective.commSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddcf653857c2010af4141debec1313370dff8ae7bb05d436a9f5ad31a2ae6166",
  "kind": "def",
  "lexical_name": "Function.Injective.commSemigroup",
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
  "slug": "function-injective-commsemigroup--aeeb01493d51dbd6c65a5493",
  "source": {
    "blob": "2d6c28f294cd647821970a1f1d3e812e693d0457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aeeb01493d51dbd6c65a549307822b38e140ab82cde4ffe60e67a9cb52400f77",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddcf653857c2010af4141debec1313370dff8ae7bb05d436a9f5ad31a2ae6166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reducible] def Function.Injective.commSemigroup {α β : Type*} [Mul α] [CommSemigroup β]
    (f : α → β) (hf : Function.Injective f)
    (hmul : ∀ x y, f (Mul.mul x y) = Mul.mul (f x) (f y)) :
    CommSemigroup α where
  toSemigroup := Function.Injective.semigroup f hf hmul
  __ := Function.Injective.commMagma f hf hmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6c28f294cd647821970a1f1d3e812e693d0457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
