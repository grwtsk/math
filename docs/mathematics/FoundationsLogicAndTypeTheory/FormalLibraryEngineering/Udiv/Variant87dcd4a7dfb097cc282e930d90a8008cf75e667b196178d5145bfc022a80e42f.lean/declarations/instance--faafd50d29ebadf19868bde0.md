# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98a106e5ebdd023cb02ad77adacaca931231ad35ea8b65aef3fbc7a96461c2c1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--faafd50d29ebadf19868bde0",
  "source": {
    "blob": "39e640013276c840da16d3db06d52ae57c65cb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faafd50d29ebadf19868bde08d1ab7055cb52c071ac651ce7c3f7b1224e7221a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98a106e5ebdd023cb02ad77adacaca931231ad35ea8b65aef3fbc7a96461c2c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blastUdiv where
  le_size := by
    intros
    simp only [blastUdiv]
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := AIG.RefVec.ite)
    refine Nat.le_trans ?_ (by apply blastUdiv.go_le_size)
    apply AIG.LawfulOperator.le_size (f := BVPred.mkEq)
  decl_eq := by
    intros
    simp only [blastUdiv]
    rw [AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.ite)]
    rw [blastUdiv.go_decl_eq]
    rw [AIG.LawfulOperator.decl_eq (f := BVPred.mkEq)]
    · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkEq)
      assumption
    · refine Nat.le_trans ?_ (by apply blastUdiv.go_le_size)
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkEq)
      assumption

end bitblast
end BVExpr


end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e640013276c840da16d3db06d52ae57c65cb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
