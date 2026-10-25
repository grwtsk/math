# nameDict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b0f0928d60cb7b7528c058d2ab885f5fa1a8206631adfe1b33200baf5ccee11",
  "kind": "def",
  "lexical_name": "nameDict",
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
  "slug": "namedict--48f41b4ceb6d6bcfb95d8789",
  "source": {
    "blob": "b7db2dd66216077d318a91a086d851650e220bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Varianta39ad1583cdc4e19b04697dbddf5a3bbbe4e8294229eefd27ff506e0102f2509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48f41b4ceb6d6bcfb95d8789d24e7e610765ae43b18b3396602c2520e93f5326",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Varianta39ad1583cdc4e19b04697dbddf5a3bbbe4e8294229eefd27ff506e0102f2509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b0f0928d60cb7b7528c058d2ab885f5fa1a8206631adfe1b33200baf5ccee11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nameDict : Std.HashMap String (List String) := .ofList [
  ("top", ["Bot"]),
  ("bot", ["Top"]),
  ("untop", ["Unbot"]),
  ("unbot", ["Untop"]),
  ("inf", ["Sup"]),
  ("sup", ["Inf"]),
  ("inf₂", ["Sup₂"]),
  ("sup₂", ["Inf₂"]),
  ("sinf", ["SSup"]),
  ("ssup", ["SInf"]),
  ("liminf", ["Limsup"]),
  ("limsup", ["Liminf"]),
  ("bliminf", ["Blimsup"]),
  ("blimsup", ["Bliminf"]),
  ("min", ["Max"]),
  ("max", ["Min"]),
  ("min?", ["Max?"]),
  ("max?", ["Min?"]),
  ("argmin", ["Argmax"]),
  ("argmax", ["Argmin"]),
  ("minimum", ["Maximum"]),
  ("maximum", ["Minimum"]),
  ("minimal", ["Maximal"]),
  ("maximal", ["Minimal"]),
  ("lower", ["Upper"]),
  ("upper", ["Lower"]),
  ("below", ["Above"]),
  ("above", ["Below"]),
  ("least", ["Greatest"]),
  ("greatest", ["Least"]),
  ("glb", ["LUB"]),
  ("lub", ["GLB"]),
  ("cofinal", ["Coinitial"]),
  ("coinitial", ["Cofinal"]),
  ("succ", ["Pred"]),
  ("pred", ["Succ"]),
  ("disjoint", ["Codisjoint"]),
  ("codisjoint", ["Disjoint"]),
  ("atom", ["Coatom"]),
  ("coatom", ["Atom"]),
  ("lfp", ["Gfp"]),
  ("gfp", ["Lfp"]),
  ("ioi", ["Iio"]),
  ("iio", ["Ioi"]),
  ("ici", ["Iic"]),
  ("iic", ["Ici"]),
  ("ioc", ["Ico"]),
  ("ico", ["Ioc"]),
  ("next", ["Prev"]),
  ("prev", ["Next"]),
  ("heyting", ["Coheyting"]),
  ("coheyting", ["Heyting"]),
  ("frame", ["Coframe"]),
  ("coframe", ["Frame"]),
  ("epigraph", ["Hypograph"]),
  ("hypograph", ["Epigraph"]),

  ("epi", ["Mono"]),
  /- `mono` can also refer to monotone, so we don't translate it. -/
  -- ("mono", ["Epi"]),
  ("epimorphisms", ["Monomorphisms"]),
  ("monomorphisms", ["Epimorphisms"]),
  ("terminal", ["Initial"]),
  ("initial", ["Terminal"]),
  ("precompose", ["Postcompose"]),
  ("postcompose", ["Precompose"]),
  ("cone", ["Cocone"]),
  ("cocone", ["Cone"]),
  ("cones", ["Cocones"]),
  ("cocones", ["Cones"]),
  ("fan", ["Cofan"]),
  ("cofan", ["Fan"]),
  ("limit", ["Colimit"]),
  ("colimit", ["Limit"]),
  ("lim", ["Colim"]),
  ("colim", ["Lim"]),
  ("limits", ["Colimits"]),
  ("colimits", ["Limits"]),
  ("product", ["Coproduct"]),
  ("coproduct", ["Product"]),
  ("products", ["Coproducts"]),
  ("coproducts", ["Products"]),
  ("pushout", ["Pullback"]),
  ("pullback", ["Pushout"]),
  ("pushouts", ["Pullbacks"]),
  ("pullbacks", ["Pushouts"]),
  ("span", ["Cospan"]),
  ("cospan", ["Span"]),
  ("kernel", ["Cokernel"]),
  ("cokernel", ["Kernel"]),
  ("kernels", ["Cokernels"]),
  ("cokernels", ["Kernels"]),
  ("unit", ["Counit"]),
  ("counit", ["Unit"]),
  ("monad", ["Comonad"]),
  ("comonad", ["Monad"]),
  ("monadic", ["Comonadic"]),
  ("comonadic", ["Monadic"]),
  ("section", ["Retraction"]),
  ("retraction", ["Section"]),
  ("functorπ", ["Functorι"]),
  ("functorι", ["Functorπ"]),
]

@[inherit_doc GuessName.GuessNameData.abbreviationDict]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Varianta39ad1583cdc4e19b04697dbddf5a3bbbe4e8294229eefd27ff506e0102f2509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDual/Varianta39ad1583cdc4e19b04697dbddf5a3bbbe4e8294229eefd27ff506e0102f2509.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7db2dd66216077d318a91a086d851650e220bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
