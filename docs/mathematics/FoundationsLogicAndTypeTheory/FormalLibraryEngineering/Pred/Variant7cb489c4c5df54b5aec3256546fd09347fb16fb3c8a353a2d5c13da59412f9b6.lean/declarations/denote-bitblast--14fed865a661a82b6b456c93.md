# denote_bitblast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a441a599-4e8a-e5a8-69b0-a51c0bc2f8fa",
  "kind": "theorem",
  "lexical_name": "denote_bitblast",
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
  "slug": "denote-bitblast--14fed865a661a82b6b456c93",
  "source": {
    "blob": "6d5450479ffab13ff0924cac43b1757ae7e091ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant7cb489c4c5df54b5aec3256546fd09347fb16fb3c8a353a2d5c13da59412f9b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14fed865a661a82b6b456c93a941a0351709719414993a10f9ba74452f4193a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant7cb489c4c5df54b5aec3256546fd09347fb16fb3c8a353a2d5c13da59412f9b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a441a599-4e8a-e5a8-69b0-a51c0bc2f8fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_bitblast (aig : AIG BVBit) (input : BVExpr.WithCache BVPred aig)
    (assign : BVExpr.Assignment) (hinv : BVExpr.Cache.Inv assign aig input.cache ) :
    ⟦(bitblast aig input).result.val.aig, (bitblast aig input).result.val.ref, assign.toAIGAssignment⟧
      =
    input.val.eval assign := by
  rcases input with ⟨pred, cache⟩
  cases pred with
  | bin lhs op rhs =>
    cases op with
    | eq =>
      simp only [bitblast, eval_bin, BVBinPred.eval_eq]
      rw [mkEq_denote_eq]
      · intros
        rw [BVExpr.bitblast_denote_mem_prefix]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [BVExpr.denote_bitblast]
          exact hinv
        · simp [Ref.hgate]
      · intros
        rw [BVExpr.denote_bitblast]
        apply BVExpr.bitblast_Inv_of_Inv
        exact hinv
    | ult =>
      simp only [bitblast, eval_bin, BVBinPred.eval_ult]
      rw [mkUlt_denote_eq]
      · intros
        rw [BVExpr.bitblast_denote_mem_prefix]
        · simp only [RefVec.get_cast, Ref.cast_eq]
          rw [BVExpr.denote_bitblast]
          exact hinv
        · simp [Ref.hgate]
      · intros
        rw [BVExpr.denote_bitblast]
        apply BVExpr.bitblast_Inv_of_Inv
        exact hinv
  | getLsbD expr idx =>
    simp only [bitblast, denote_blastGetLsbD, eval_getLsbD]
    split
    · rw [BVExpr.denote_bitblast]
      exact hinv
    · symm
      apply BitVec.getLsbD_of_ge
      omega

end BVPred

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant7cb489c4c5df54b5aec3256546fd09347fb16fb3c8a353a2d5c13da59412f9b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant7cb489c4c5df54b5aec3256546fd09347fb16fb3c8a353a2d5c13da59412f9b6.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5450479ffab13ff0924cac43b1757ae7e091ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
