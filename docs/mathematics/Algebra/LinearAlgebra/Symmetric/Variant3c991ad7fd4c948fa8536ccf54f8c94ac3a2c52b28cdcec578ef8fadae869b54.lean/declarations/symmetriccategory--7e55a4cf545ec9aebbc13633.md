# symmetricCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7468d291faaf11933f599d65e2b0d6c0bd80e4854d182bf873e894bddfcc51da",
  "kind": "instance",
  "lexical_name": "symmetricCategory",
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
  "slug": "symmetriccategory--7e55a4cf545ec9aebbc13633",
  "source": {
    "blob": "63f531b5244da717466998d647f28cf1478ab749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e55a4cf545ec9aebbc13633ff934c1393453217a81d008f6b08cdae3dbbc52d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7468d291faaf11933f599d65e2b0d6c0bd80e4854d182bf873e894bddfcc51da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance symmetricCategory : SymmetricCategory (ModuleCat.{u} R) where
  braiding := braiding
  braiding_naturality f g := braiding_naturality f g
  hexagon_forward := hexagon_forward
  hexagon_reverse := hexagon_reverse
  -- porting note: this proof was automatic in Lean3
  -- now `aesop` is applying `ModuleCat.ext` in favour of `TensorProduct.ext`.
  symmetry _ _ := by
    apply TensorProduct.ext'
    aesop_cat
set_option linter.uppercaseLean3 false in
#align Module.monoidal_category.symmetric_category ModuleCat.MonoidalCategory.symmetricCategory

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant3c991ad7fd4c948fa8536ccf54f8c94ac3a2c52b28cdcec578ef8fadae869b54.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f531b5244da717466998d647f28cf1478ab749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
