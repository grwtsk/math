# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ccb52f4ef47c8127dd2045ee59788dabcf72e53024945339b3c44b263277fcd",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--cd08de42c9dc25d71e748b71",
  "source": {
    "blob": "478b7f82f24f885dac2cb1113f049505ee5d7b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd08de42c9dc25d71e748b71d9dc2ec88478d4a60f6bc05a5cedf454329b6939",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ccb52f4ef47c8127dd2045ee59788dabcf72e53024945339b3c44b263277fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure Context where
  private mk ::
  config            : Config := {}
  /-- User-extensible configuration. Tactic options of the form `(user.optName := ...)`
  set keys `tactic.simp.user.optName`, if there is a global option named `tactic.simp.user.optName`. -/
  userConfig        : Options := {}
  /-- Local declarations to propagate to `Meta.Context` -/
  zetaDeltaSet      : FVarIdSet := {}
  /--
  When processing `Simp` arguments, `zetaDelta` may be performed if `zetaDeltaSet` is not empty.
  We save the local free variable ids in `initUsedZetaDelta`. `initUsedZetaDelta` is a subset of `zetaDeltaSet`. -/
  initUsedZetaDelta : FVarIdSet := {}
  metaConfig        : ConfigWithKey := default
  indexConfig       : ConfigWithKey := default
  /-- `maxDischargeDepth` from `config` as an `UInt32`. -/
  maxDischargeDepth : UInt32 := UInt32.ofNatClamp config.maxDischargeDepth
  simpTheorems      : SimpTheoremsArray := {}
  congrTheorems     : SimpCongrTheorems := {}
  /--
  Stores the "parent" term for the term being simplified.
  If a simplification procedure result depends on this value,
  then it is its responsibility to set `Result.cache := false`.

  Motivation for this field:
  Suppose we have a simplification procedure for normalizing arithmetic terms.
  Then, given a term such as `t_1 + ... + t_n`, we don't want to apply the procedure
  to every subterm `t_1 + ... + t_i` for `i < n` for performance issues. The procedure
  can accomplish this by checking whether the parent term is also an arithmetical expression
  and do nothing if it is. However, it should set `Result.cache := false` to ensure
  we don't miss simplification opportunities. For example, consider the following:
  ```
  example (x y : Nat) (h : y = 0) : id ((x + x) + y) = id (x + x) := by
    simp +arith only
    ...
  ```
  If we don't set `Result.cache := false` for the first `x + x`, then we get
  the resulting state:
  ```
  ... |- id (2*x + y) = id (x + x)
  ```
  instead of
  ```
  ... |- id (2*x + y) = id (2*x)
  ```
  as expected.

  Remark: given an application `f a b c` the "parent" term for `f`, `a`, `b`, and `c`
  is `f a b c`.
  -/
  parent?           : Option Expr := none
  dischargeDepth    : UInt32 := 0
  /--
  Number of indices in the local context when starting `simp`.
  We use this information to decide which assumptions we can use without
  invalidating the cache.
  -/
  lctxInitIndices   : Nat := 0
  /--
  If `inDSimp := true`, then `simp` is in `dsimp` mode, and only applying
  transformations that preserve definitional equality.
  -/
  inDSimp : Bool := false
  deriving Inhabited

/--
Helper method for bootstrapping purposes.
It disables `arith` if support theorems have not been defined yet.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478b7f82f24f885dac2cb1113f049505ee5d7b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
