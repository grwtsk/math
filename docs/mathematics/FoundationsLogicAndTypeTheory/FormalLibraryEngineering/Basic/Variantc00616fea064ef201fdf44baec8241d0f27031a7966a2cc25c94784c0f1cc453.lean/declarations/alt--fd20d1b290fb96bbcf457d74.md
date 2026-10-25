# Alt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89e9f46f1d8cbcecce0f84d78c134d14d89e18482b69d0b6813cde4be740e39c",
  "kind": "structure",
  "lexical_name": "Alt",
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
  "slug": "alt--fd20d1b290fb96bbcf457d74",
  "source": {
    "blob": "19f1a2ebff1dd55f115df1effa919e30ec3e5c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd20d1b290fb96bbcf457d744894bc4799b2daf48cb09ff800f32ac7e04c3730",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89e9f46f1d8cbcecce0f84d78c134d14d89e18482b69d0b6813cde4be740e39c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Alt where
  /-- `Syntax` object for providing position information -/
  ref       : Syntax
  /--
  Original alternative index. Alternatives can be split, this index is the original
  position of the alternative that generated this one.
  -/
  idx       : Nat
  /--
  Right-hand-side of the alternative.
  -/
  rhs       : Expr
  /--
  Alternative pattern variables.
  -/
  fvarDecls : List LocalDecl
  /--
  Alternative patterns.
  -/
  patterns  : List Pattern
  /--
  Pending constraints `lhs ≋ rhs` that need to be solved before the alternative
  is considered acceptable. We generate them when processing inaccessible patterns.
  Note that `lhs` and `rhs` often have different types.
  After we perform additional case analysis, their types become definitionally equal.
  -/
  cnstrs    : List (Expr × Expr)
  /--
  Indices of previous alternatives that this alternative expects a not-that-proofs.
  (When producing a splitter, and in the future also for source-level overlap hypotheses.)
  -/
  notAltIdxs : Array Nat
  deriving Inhabited

namespace Alt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc00616fea064ef201fdf44baec8241d0f27031a7966a2cc25c94784c0f1cc453.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19f1a2ebff1dd55f115df1effa919e30ec3e5c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
