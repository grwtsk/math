# LetValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01427fa4409b8c8c828f0d7baeff64958e4da5c84f64937c1fbe5dd491777b12",
  "kind": "inductive",
  "lexical_name": "LetValue",
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
  "slug": "letvalue--87e02e9bfa16d5a774e5bdce",
  "source": {
    "blob": "55d9349922caca962355b592fb556e2a5b699fdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9f86cfac11a407fd0300259723aff0e8f831c7e08eccede4e471c4332f2e6f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87e02e9bfa16d5a774e5bdce9349ed6b11ca0a4f18cb163517d6d41096cf671b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9f86cfac11a407fd0300259723aff0e8f831c7e08eccede4e471c4332f2e6f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01427fa4409b8c8c828f0d7baeff64958e4da5c84f64937c1fbe5dd491777b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive LetValue (pu : Purity) where
  /--
  A literal value.
  -/
  | lit (value : LitValue)
  /--
  An erased value that is irrelevant for computation.
  -/
  | erased
  /--
  A projection from a pure LCNF value.
  -/
  | proj (typeName : Name) (idx : Nat) (struct : FVarId) (h : pu = .pure := by purity_tac)
  /--
  A pure application of a constant.
  -/
  | const (declName : Name) (us : List Level) (args : Array (Arg pu)) (h : pu = .pure := by purity_tac)
  /--
  An application of a free variable
  -/
  | fvar (fvarId : FVarId) (args : Array (Arg pu))
  /--
  Allocating a constructor.
  -/
  | ctor (i : CtorInfo) (args : Array (Arg pu)) (h : pu = .impure := by purity_tac)
  /--
  Projecting objects out of a value.
  -/
  | oproj (i : Nat) (var : FVarId) (h : pu = .impure := by purity_tac)
  /--
  Projecting USize scalars out of a value.
  -/
  | uproj (i : Nat) (var : FVarId) (h : pu = .impure := by purity_tac)
  /--
  Projecting non-USize scalars out of a value
  -/
  | sproj (n : Nat) (offset : Nat) (var : FVarId) (h : pu = .impure := by purity_tac)
  /--
  Full, impure, application of a function.
  -/
  | fap (fn : Name) (args : Array (Arg pu)) (h : pu = .impure := by purity_tac)
  /--
  Partial application of a function.
  -/
  | pap (fn : Name) (args : Array (Arg pu)) (h : pu = .impure := by purity_tac)
  /--
  The reset instruction from Counting Immutable Beans. `n` is the amount of object fields stored in
  the constructor in `var`.
  -/
  | reset (n : Nat) (var : FVarId) (h : pu = .impure := by purity_tac)
  /-- `reuse x in ctor_i ys` instruction in the paper. `updateHeader` is set if the tag in the new
      ctor differs from the one in the old ctor and thus needs to be updated. -/
  | reuse (var : FVarId) (i : CtorInfo) (updateHeader : Bool) (args : Array (Arg pu)) (h : pu = .impure := by purity_tac)
  /--
  Given a scalar type `ty` and a value `fvarId : ty`, this operation returns a value of type
  `tobject`. For small scalar values the result is a tagged pointer, and no memory allocation is
  performed.
  -/
  | box (ty : Expr) (fvarId : FVarId) (h : pu = .impure := by purity_tac)
  /-- Given `fvarId : [t]object`, obtain the underlying scalar value. -/
  | unbox (fvarId : FVarId) (h : pu = .impure := by purity_tac)
  /--
  Return whether the object stored behind `fvarId` is shared or not. The return type is a `UInt8`.
  -/
  | isShared (fvarId : FVarId) (h : pu = .impure := by purity_tac)
  deriving Inhabited, BEq, Hashable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9f86cfac11a407fd0300259723aff0e8f831c7e08eccede4e471c4332f2e6f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9f86cfac11a407fd0300259723aff0e8f831c7e08eccede4e471c4332f2e6f0b.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55d9349922caca962355b592fb556e2a5b699fdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
