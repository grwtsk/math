# fixAbbreviation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e33703e351dc9344a76247b8ead50dc764186d88a7f978b3df1ab6411c7b61a",
  "kind": "def",
  "lexical_name": "fixAbbreviation",
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
  "slug": "fixabbreviation--50de40346a49485dfe673716",
  "source": {
    "blob": "8d2dbfc21ec31d53c72b1ae3cdcea7b450370dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 826,
    "line": 760,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50de40346a49485dfe6737169dc6d54dfb6d0b062bcb9a1ffec1edc181be5c00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e33703e351dc9344a76247b8ead50dc764186d88a7f978b3df1ab6411c7b61a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 760–826.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixAbbreviation : List String → List String
  | "cancel" :: "Add" :: s            => "addCancel" :: fixAbbreviation s
  | "Cancel" :: "Add" :: s            => "AddCancel" :: fixAbbreviation s
  | "left" :: "Cancel" :: "Add" :: s  => "addLeftCancel" :: fixAbbreviation s
  | "Left" :: "Cancel" :: "Add" :: s  => "AddLeftCancel" :: fixAbbreviation s
  | "right" :: "Cancel" :: "Add" :: s => "addRightCancel" :: fixAbbreviation s
  | "Right" :: "Cancel" :: "Add" :: s => "AddRightCancel" :: fixAbbreviation s
  | "cancel" :: "Comm" :: "Add" :: s  => "addCancelComm" :: fixAbbreviation s
  | "Cancel" :: "Comm" :: "Add" :: s  => "AddCancelComm" :: fixAbbreviation s
  | "comm" :: "Add" :: s              => "addComm" :: fixAbbreviation s
  | "Comm" :: "Add" :: s              => "AddComm" :: fixAbbreviation s
  | "Zero" :: "LE" :: s               => "Nonneg" :: fixAbbreviation s
  | "zero" :: "_" :: "le" :: s        => "nonneg" :: fixAbbreviation s
  | "Zero" :: "LT" :: s               => "Pos" :: fixAbbreviation s
  | "zero" :: "_" :: "lt" :: s        => "pos" :: fixAbbreviation s
  | "LE" :: "Zero" :: s               => "Nonpos" :: fixAbbreviation s
  | "le" :: "_" :: "zero" :: s        => "nonpos" :: fixAbbreviation s
  | "LT" :: "Zero" :: s               => "Neg" :: fixAbbreviation s
  | "lt" :: "_" :: "zero" :: s        => "neg" :: fixAbbreviation s
  | "Add" :: "Single" :: s            => "Single" :: fixAbbreviation s
  | "add" :: "Single" :: s            => "single" :: fixAbbreviation s
  | "add" :: "_" :: "single" :: s     => "single" :: fixAbbreviation s
  | "Add" :: "Support" :: s           => "Support" :: fixAbbreviation s
  | "add" :: "Support" :: s           => "support" :: fixAbbreviation s
  | "add" :: "_" :: "support" :: s    => "support" :: fixAbbreviation s
  | "Add" :: "TSupport" :: s          => "TSupport" :: fixAbbreviation s
  | "add" :: "TSupport" :: s          => "tsupport" :: fixAbbreviation s
  | "add" :: "_" :: "tsupport" :: s   => "tsupport" :: fixAbbreviation s
  | "Add" :: "Indicator" :: s         => "Indicator" :: fixAbbreviation s
  | "add" :: "Indicator" :: s         => "indicator" :: fixAbbreviation s
  | "add" :: "_" :: "indicator" :: s  => "indicator" :: fixAbbreviation s
  | "is" :: "Square" :: s             => "even" :: fixAbbreviation s
  | "Is" :: "Square" :: s             => "Even" :: fixAbbreviation s
  -- "Regular" is well-used in mathlib3 with various meanings (e.g. in
  -- measure theory) and a direct translation
  -- "regular" --> ["add", "Regular"] in `nameDict` above seems error-prone.
  | "is" :: "Regular" :: s            => "isAddRegular" :: fixAbbreviation s
  | "Is" :: "Regular" :: s            => "IsAddRegular" :: fixAbbreviation s
  | "is" :: "Left" :: "Regular" :: s  => "isAddLeftRegular" :: fixAbbreviation s
  | "Is" :: "Left" :: "Regular" :: s  => "IsAddLeftRegular" :: fixAbbreviation s
  | "is" :: "Right" :: "Regular" :: s => "isAddRightRegular" :: fixAbbreviation s
  | "Is" :: "Right" :: "Regular" :: s => "IsAddRightRegular" :: fixAbbreviation s
  -- the capitalization heuristic of `applyNameDict` doesn't work in the following cases
  | "HSmul" :: s                      => "HSMul" :: fixAbbreviation s -- from `HPow`
  | "NSmul" :: s                      => "NSMul" :: fixAbbreviation s -- from `NPow`
  | "Nsmul" :: s                      => "NSMul" :: fixAbbreviation s -- from `Pow`
  | "ZSmul" :: s                      => "ZSMul" :: fixAbbreviation s -- from `ZPow`
  | "neg" :: "Fun" :: s               => "invFun" :: fixAbbreviation s
  | "Neg" :: "Fun" :: s               => "InvFun" :: fixAbbreviation s
  | "unique" :: "Prods" :: s          => "uniqueSums" :: fixAbbreviation s
  | "Unique" :: "Prods" :: s          => "UniqueSums" :: fixAbbreviation s
  | "order" :: "Of" :: s              => "addOrderOf" :: fixAbbreviation s
  | "Order" :: "Of" :: s              => "AddOrderOf" :: fixAbbreviation s
  | "is"::"Of"::"Fin"::"Order"::s     => "isOfFinAddOrder" :: fixAbbreviation s
  | "Is"::"Of"::"Fin"::"Order"::s     => "IsOfFinAddOrder" :: fixAbbreviation s
  | "is" :: "Central" :: "Scalar" :: s  => "isCentralVAdd" :: fixAbbreviation s
  | "Is" :: "Central" :: "Scalar" :: s  => "IsCentralVAdd" :: fixAbbreviation s
  | x :: s                            => x :: fixAbbreviation s
  | []                                => []

/--
Autogenerate additive name.
This runs in several steps:
1) Split according to capitalisation rule and at `_`.
2) Apply word-by-word translation rules.
3) Fix up abbreviations that are not word-by-word translations, like "addComm" or "Nonneg".
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean#L760).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2dbfc21ec31d53c72b1ae3cdcea7b450370dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
