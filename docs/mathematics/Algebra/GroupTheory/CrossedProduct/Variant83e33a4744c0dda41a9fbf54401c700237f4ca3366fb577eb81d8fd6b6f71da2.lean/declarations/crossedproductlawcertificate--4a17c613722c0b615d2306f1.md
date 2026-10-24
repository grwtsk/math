# CrossedProductLawCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7441686ce309175f3599154761388a325a1dd4b3c59145a2ea0212bfe07abb35",
  "kind": "structure",
  "lexical_name": "CrossedProductLawCertificate",
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
  "slug": "crossedproductlawcertificate--4a17c613722c0b615d2306f1",
  "source": {
    "blob": "ed76007e560b94ae65d2b57eff07fbd59442ebb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 111,
    "path": "GRWTSK/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a17c613722c0b615d2306f1f6f02ae7910321ca2894bab904759b9dc5b1a47f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7441686ce309175f3599154761388a325a1dd4b3c59145a2ea0212bfe07abb35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrossedProductLawCertificate
    (system : RandomBitfieldSystem)
    (Automorphism : Type*)
    [Fintype Automorphism]
    [Group Automorphism]
    (action :
      BitfieldAutomorphismAction system Automorphism) where
  associative :
    ∀ left middle right :
        CrossedProductElement system Automorphism,
      crossedProductMultiply action
          (crossedProductMultiply action left middle)
          right =
        crossedProductMultiply action left
          (crossedProductMultiply action middle right)
  starReverses :
    ∀ left right :
        CrossedProductElement system Automorphism,
      crossedProductStar action
          (crossedProductMultiply action left right) =
        crossedProductMultiply action
          (crossedProductStar action right)
          (crossedProductStar action left)
  starInvolutive :
    Function.Involutive (crossedProductStar action)
  canonicalTraceCyclic :
    ∀ left right :
        CrossedProductElement system Automorphism,
      canonicalCrossedProductTrace
          (crossedProductMultiply action left right) =
        canonicalCrossedProductTrace
          (crossedProductMultiply action right left)

/--
Existentially bundled finite automorphism sector used by the complete closure
package.  The carrier and its instances remain inspectable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed76007e560b94ae65d2b57eff07fbd59442ebb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
