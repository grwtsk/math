# applyAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:953eac6b16313787ec92d50664b17ef5a94e06d17893fdde38de65f8889d59e5",
  "kind": "def",
  "lexical_name": "applyAssignment",
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
  "slug": "applyassignment--db11baa7c660e0d552bdd12d",
  "source": {
    "blob": "b93662f0624c93668d57fdf79fda4f70fe156101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 700,
    "line": 680,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db11baa7c660e0d552bdd12de74017c5490fb08305ab08b83ca56037485a4b78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:953eac6b16313787ec92d50664b17ef5a94e06d17893fdde38de65f8889d59e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–700.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyAssignment (mvars : Array Expr) : OptionT (StateT Choice M) Unit := do
  let numParams := (← read).thm.numParams
  let rec go (i : Nat) := do
    if h : i < mvars.size then
      let bidx := numParams - i - 1
      let v := (← get).assignment[bidx]!
      if isSameExpr v delayedEqProof then
        processDelayed mvars i h
      else if !isSameExpr v unassigned then
        processUnassigned mvars i v h
      go (i + 1)
  go 0

/--
Use a fresh name generator for creating internal metavariables for theorem instantiation.
This is technique to ensure the metavariables ids do not depend on operations performed before invoking `grind`.
Without this trick, we experience counterintuitive behavior where small changes affect the metavariable ids, and
consequently the hash code for expressions, and operations such as `qsort` using `Expr.quickLt` in
`assignUnassignedLevelMVars`.
This code is correct because the auxiliary metavariables created during theorem instantiation cannot escape.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93662f0624c93668d57fdf79fda4f70fe156101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
