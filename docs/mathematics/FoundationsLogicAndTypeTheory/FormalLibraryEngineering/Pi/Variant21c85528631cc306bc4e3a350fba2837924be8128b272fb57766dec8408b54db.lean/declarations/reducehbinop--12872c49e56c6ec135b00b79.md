# reduceHBinOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44d6f6b06297f7ff7f8b9a95fa23a65bfa7b13eedc9077d2aa4fc3578e27199a",
  "kind": "def",
  "lexical_name": "reduceHBinOp",
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
  "slug": "reducehbinop--12872c49e56c6ec135b00b79",
  "source": {
    "blob": "f150b0e68fbc53fe18e78708b3824414e4b80833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12872c49e56c6ec135b00b79a2eab1c139210398007fd04cd055bb38aa4ee782",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44d6f6b06297f7ff7f8b9a95fa23a65bfa7b13eedc9077d2aa4fc3578e27199a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def reduceHBinOp (n : Name) (args : Array Expr) (lambdas : List FVarId) :
    MetaM (Option (Expr × Expr × Expr × List FVarId)) :=
  match n with
  | ``HAdd.hAdd => reduceHBinOpAux args lambdas ``instHAdd ``Pi.instAdd
  | ``HMul.hMul => reduceHBinOpAux args lambdas ``instHMul ``Pi.instMul
  | ``HSub.hSub => reduceHBinOpAux args lambdas ``instHSub ``Pi.instSub
  | ``HDiv.hDiv => reduceHBinOpAux args lambdas ``instHDiv ``Pi.instDiv
  | _ => return none

/-- Normalize an application of a unary operator like `Inv.inv`, using:
- `f⁻¹ a = (f a)⁻¹` to decrease the arity to 3
- `(fun x => (f a)⁻¹) = f⁻¹` to get rid of any lambdas in front -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f150b0e68fbc53fe18e78708b3824414e4b80833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
