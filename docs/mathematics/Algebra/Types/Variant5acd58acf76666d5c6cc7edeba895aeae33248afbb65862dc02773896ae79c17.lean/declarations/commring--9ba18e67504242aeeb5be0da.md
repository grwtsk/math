# CommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03840954715cbc6b6d69da9757a3c71a2a11057e1ae2042656a40c2b4c06e612",
  "kind": "structure",
  "lexical_name": "CommRing",
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
  "slug": "commring--9ba18e67504242aeeb5be0da",
  "source": {
    "blob": "c4638d5afff95049dcda586f6761eb2f018a0c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 209,
    "path": "GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ba18e67504242aeeb5be0da05eff12364942c1ea58f923f15816a09943c72c9",
  "verification": {
    "reference": "docs/verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03840954715cbc6b6d69da9757a3c71a2a11057e1ae2042656a40c2b4c06e612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommRing extends Ring where
  /-- Inverse if `fieldInst?` is `some inst` -/
  invFn?         : Option Expr := none
  /--
  If this is a `OfSemiring.Q α` ring, this field contain the
  `semiringId` for `α`.
  -/
  semiringId?    : Option Nat
  /-- `CommSemiring` instance for `type` -/
  commSemiringInst   : Expr
  /-- `CommRing` instance for `type` -/
  commRingInst   : Expr
  /-- `NoNatZeroDivisors` instance for `type` if available. -/
  noZeroDivInst? : Option Expr
  /-- `Field` instance for `type` if available. -/
  fieldInst?     : Option Expr
  /-- `PowIdentity` instance, the synthesized `CommSemiring` instance, and exponent `p` if available. -/
  powIdentityInst? : Option (Expr × Expr × Nat) := none
  /-- `denoteEntries` is `denote` as a `PArray` for deterministic traversal. -/
  denoteEntries  : PArray (Expr × RingExpr) := {}
  /-- Next unique id for `EqCnstr`s. -/
  nextId         : Nat := 0
  /-- Number of "steps": simplification and superposition. -/
  steps          : Nat := 0
  /-- Equations to process. -/
  queue          : Queue := {}
  /--
  The basis is currently just a list. If this is a performance bottleneck, we should use
  a better data-structure. For examples, we could use a simple indexing for the linear case
  where we map variable in the leading monomial to `EqCnstr`.
  -/
  basis          : List EqCnstr := {}
  /-- Disequalities. -/
  -- TODO: add indexing
  diseqs         : PArray DiseqCnstr := {}
  /--
  If `recheck` is `true`, then new equalities have been added to the basis since we checked
  disequalities and implied equalities.
  -/
  recheck        : Bool := false
  /-- Inverse theorems that have been already asserted. -/
  invSet         : PHashSet Expr := {}
  /-- Number of variables for which `PowIdentity` equations have been pushed. -/
  powIdentityVarCount : Nat := 0
  /--
  An equality of the form `c = 0`. It is used to simplify polynomial coefficients.
  -/
  numEq0?        : Option EqCnstr := none
  /-- Flag indicating whether `numEq0?` has been updated. -/
  numEq0Updated  : Bool := false
  deriving Inhabited

/--
State for each `CommSemiring` processed by this module.
Recall that `CommSemiring` are processed using the envelop `OfCommSemiring.Q`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Types/Variant5acd58acf76666d5c6cc7edeba895aeae33248afbb65862dc02773896ae79c17.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4638d5afff95049dcda586f6761eb2f018a0c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
