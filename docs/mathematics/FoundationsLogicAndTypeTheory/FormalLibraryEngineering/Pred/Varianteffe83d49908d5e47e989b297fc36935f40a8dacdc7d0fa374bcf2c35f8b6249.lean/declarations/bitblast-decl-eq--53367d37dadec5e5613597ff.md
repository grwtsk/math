# bitblast_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17bc4825-279c-d81f-268b-dc3782613f01",
  "kind": "theorem",
  "lexical_name": "bitblast_decl_eq",
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
  "slug": "bitblast-decl-eq--53367d37dadec5e5613597ff",
  "source": {
    "blob": "d82c4369a3d7167370d3e6481d3ae100ca5bc1b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Varianteffe83d49908d5e47e989b297fc36935f40a8dacdc7d0fa374bcf2c35f8b6249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53367d37dadec5e5613597ffbcb1007f2012eef09ee7ef245bd161361c827d41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Varianteffe83d49908d5e47e989b297fc36935f40a8dacdc7d0fa374bcf2c35f8b6249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17bc4825-279c-d81f-268b-dc3782613f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitblast_decl_eq (aig : AIG BVBit) (input : BVExpr.WithCache BVPred aig) :
    ∀ (idx : Nat) (h1) (h2), (bitblast aig input).result.val.aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  intro idx h1 h2
  rcases input with ⟨pred, cache⟩
  simp only [BVPred.bitblast]
  cases pred with
  | bin lhs op rhs =>
    cases op with
    | eq =>
      dsimp only
      rw [AIG.LawfulOperator.decl_eq (f := mkEq)]
      rw [BVExpr.bitblast_decl_eq]
      rw [BVExpr.bitblast_decl_eq]
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
    | ult =>
      simp only
      rw [AIG.LawfulOperator.decl_eq (f := mkUlt)]
      rw [BVExpr.bitblast_decl_eq]
      rw [BVExpr.bitblast_decl_eq]
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
      · apply BVExpr.bitblast_lt_size_of_lt_aig_size
        apply BVExpr.bitblast_lt_size_of_lt_aig_size
        assumption
  | getLsbD expr idx =>
    simp only
    rw [BVExpr.bitblast_decl_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Varianteffe83d49908d5e47e989b297fc36935f40a8dacdc7d0fa374bcf2c35f8b6249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Varianteffe83d49908d5e47e989b297fc36935f40a8dacdc7d0fa374bcf2c35f8b6249.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d82c4369a3d7167370d3e6481d3ae100ca5bc1b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
