# ToIntInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01aeb68408fff3286059a42f83f972954345ebbf696937f365af52e0f42a7d16",
  "kind": "structure",
  "lexical_name": "ToIntInfo",
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
  "slug": "tointinfo--3e51cbddd487afdd583f0cf7",
  "source": {
    "blob": "54df56582b0335782f7c9991484398b8c107a619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e51cbddd487afdd583f0cf70942ad0786ecb70e4d30f8822ce1befc58b3e68e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01aeb68408fff3286059a42f83f972954345ebbf696937f365af52e0f42a7d16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ToIntInfo where
  id        : Nat
  type      : Expr
  u         : Level
  toIntInst : Expr
  rangeExpr : Expr
  range     : SymbolicIntInterval
  toInt     : Expr
  wrap      : Expr
  -- theorem `of_eq_wrap_co_0` if `range == .co 0 hi`
  ofWrap0?  : Option Expr
  ofEq      : Expr
  ofDiseq   : Expr
  lowerThm? : Option Expr
  upperThm? : Option Expr
  -- Remark: we initialize the following fields on demand
  ofLE?     : Option (Option Expr) := none
  ofNotLE?  : Option (Option Expr) := none
  ofLT?     : Option (Option Expr) := none
  ofNotLT?  : Option (Option Expr) := none
  addThms?  : Option ToIntThms := none
  mulThms?  : Option ToIntThms := none
  subThm?   : Option (Option Expr) := none
  negThm?   : Option (Option Expr) := none
  divThm?   : Option (Option Expr) := none
  modThm?   : Option (Option Expr) := none
  powThm?   : Option (Option Expr) := none
  zeroThm?  : Option (Option Expr) := none
  ofNatThm? : Option (Option Expr) := none
  deriving Inhabited

/--
For each term `e` of type `α` which implements the `ToInt α i` class,
we store its corresponding `Int` term `eToInt`, a proof `he : toInt e = eToInt`,
and the type `α`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54df56582b0335782f7c9991484398b8c107a619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
