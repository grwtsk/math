# BVExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46993f5308265c23a42dd95684c21628ca0ecef8ac2cc4c4c3df8f187fe04ba6",
  "kind": "inductive",
  "lexical_name": "BVExpr",
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
  "slug": "bvexpr--16ee54ee6ddc5fc3bc52d327",
  "source": {
    "blob": "cbf8d050dce593a0f16e546af092c3f1795ffd25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12a7a9d4b6fb60897143e26404db6695a7671e7752eba21ede42021c41db6126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16ee54ee6ddc5fc3bc52d327e78b37f18553a160c4e02bfacf772eb7b56634a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12a7a9d4b6fb60897143e26404db6695a7671e7752eba21ede42021c41db6126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46993f5308265c23a42dd95684c21628ca0ecef8ac2cc4c4c3df8f187fe04ba6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive BVExpr : Nat → Type where
  /--
  A `BitVec` variable, referred to through an index.
  -/
  | var (idx : Nat) : BVExpr w
  /--
  A constant `BitVec` value.
  -/
  | const (val : BitVec w) : BVExpr w
  /--
  Extract a slice from a `BitVec`.
  -/
  | extract (start len : Nat) (expr : BVExpr w) : BVExpr len
  /--
  A binary operation on two `BVExpr`.
  -/
  | bin (lhs : BVExpr w) (op : BVBinOp) (rhs : BVExpr w) : BVExpr w
  /--
  A unary operation on two `BVExpr`.
  -/
  | un (op : BVUnOp) (operand : BVExpr w) : BVExpr w
  /--
  Concatenate two bitvectors.
  -/
  | append (lhs : BVExpr l) (rhs : BVExpr r) (h : w = l + r) : BVExpr w
  /--
  Concatenate a bitvector with itself `n` times.
  -/
  | replicate (n : Nat) (expr : BVExpr w) (h : w' = w * n) : BVExpr w'
  /--
  shift left by another BitVec expression. For constant shifts there exists a `BVUnop`.
  -/
  | shiftLeft (lhs : BVExpr m) (rhs : BVExpr n) : BVExpr m
  /--
  shift right by another BitVec expression. For constant shifts there exists a `BVUnop`.
  -/
  | shiftRight (lhs : BVExpr m) (rhs : BVExpr n) : BVExpr m
  /--
  shift right arithmetically by another BitVec expression. For constant shifts there exists a `BVUnop`.
  -/
  | arithShiftRight (lhs : BVExpr m) (rhs : BVExpr n) : BVExpr m
with
  @[computed_field]
  hashCode : (w : Nat) → BVExpr w → UInt64
    | w, .var idx => mixHash 5 <| mixHash (hash w) (hash idx)
    | w, .const val => mixHash 7 <| mixHash (hash w) (hash val)
    | w, .extract start _ expr =>
      mixHash 11 <| mixHash (hash start) <| mixHash (hash w) (hashCode _ expr)
    | w, .bin lhs op rhs =>
      mixHash 13 <| mixHash (hash w) <| mixHash (hashCode _ lhs) <| mixHash (hash op) (hashCode _ rhs)
    | w, .un op operand =>
      mixHash 17 <| mixHash (hash w) <| mixHash (hash op) (hashCode _ operand)
    | w, .append lhs rhs _ =>
      mixHash 19 <| mixHash (hash w) <| mixHash (hashCode _ lhs) (hashCode _ rhs)
    | w, .replicate n expr _ =>
      mixHash 23 <| mixHash (hash w) <| mixHash (hash n) (hashCode _ expr)
    | w, .shiftLeft lhs rhs =>
      mixHash 29 <| mixHash (hash w) <| mixHash (hashCode _ lhs) (hashCode _ rhs)
    | w, .shiftRight lhs rhs =>
      mixHash 31 <| mixHash (hash w) <| mixHash (hashCode _ lhs) (hashCode _ rhs)
    | w, .arithShiftRight lhs rhs =>
      mixHash 37 <| mixHash (hash w) <| mixHash (hashCode _ lhs) (hashCode _ rhs)


namespace BVExpr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12a7a9d4b6fb60897143e26404db6695a7671e7752eba21ede42021c41db6126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant12a7a9d4b6fb60897143e26404db6695a7671e7752eba21ede42021c41db6126.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbf8d050dce593a0f16e546af092c3f1795ffd25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
