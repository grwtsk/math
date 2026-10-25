# bitblast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0663c9b29f40023cb3a8e2ff23a2d1c2f3e10fba97d3ed0d52469a81ca6393d",
  "kind": "def",
  "lexical_name": "bitblast",
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
  "slug": "bitblast--8138ccdcb5188fd1054726cb",
  "source": {
    "blob": "8aa84c0eb0b6af118ad3e6f92cf97991b131e463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8138ccdcb5188fd1054726cb74edb18f0172041261137ede7f7f149feafb58bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0663c9b29f40023cb3a8e2ff23a2d1c2f3e10fba97d3ed0d52469a81ca6393d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bitblast (aig : AIG BVBit) (input : WithCache (BVExpr w) aig) : Return aig w :=
  let ⟨expr, cache⟩ := input
  goCache aig expr cache
where
  goCache {w : Nat} (aig : AIG BVBit) (expr : BVExpr w) (cache : Cache aig) : Return aig w :=
    match cache.get? expr with
    | some vec =>
      ⟨⟨⟨aig, vec⟩, Nat.le_refl ..⟩, cache⟩
    | none =>
      let ⟨result, cache⟩ := go aig expr cache
      ⟨result, cache.insert expr result.val.vec⟩
  termination_by (sizeOf expr, 1)

  go {w : Nat} (aig : AIG BVBit) (expr : BVExpr w) (cache : Cache aig) : Return aig w :=
    match expr with
    | .var a =>
      let res := bitblast.blastVar aig ⟨a⟩
      have := AIG.LawfulVecOperator.le_size (f := bitblast.blastVar) ..
      let cache := cache.cast this
      ⟨⟨res, this⟩, cache⟩
    | .const val =>
      let res := bitblast.blastConst aig val
      ⟨⟨⟨aig, res⟩, by simp⟩, cache⟩
    | .bin lhsExpr op rhsExpr =>
      let ⟨⟨⟨aig, lhs⟩, hlaig⟩, cache⟩ := goCache aig lhsExpr cache
      let ⟨⟨⟨aig, rhs⟩, hraig⟩, cache⟩ := goCache aig rhsExpr cache
      let lhs := lhs.cast <| by
        dsimp only at hlaig hraig
        omega
      match op with
      | .and =>
         let res := AIG.RefVec.zip aig ⟨lhs, rhs⟩ AIG.mkAndCached
         have := by
           apply AIG.RefVec.zip_le_size_of_le_aig_size
           dsimp only at hlaig hraig
           omega
         ⟨⟨res, this⟩, cache.cast (AIG.RefVec.zip_le_size ..)⟩
      | .or =>
         let res := AIG.RefVec.zip aig ⟨lhs, rhs⟩ AIG.mkOrCached
         have := by
           apply AIG.RefVec.zip_le_size_of_le_aig_size
           dsimp only at hlaig hraig
           omega
         ⟨⟨res, this⟩, cache.cast (AIG.RefVec.zip_le_size ..)⟩
      | .xor =>
         let res := AIG.RefVec.zip aig ⟨lhs, rhs⟩ AIG.mkXorCached
         have := by
           apply AIG.RefVec.zip_le_size_of_le_aig_size
           dsimp only at hlaig hraig
           omega
         ⟨⟨res, this⟩, cache.cast (AIG.RefVec.zip_le_size ..)⟩
      | .add =>
        let res := bitblast.blastAdd aig ⟨lhs, rhs⟩
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastAdd)
          dsimp only at hlaig hraig
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastAdd) ..)⟩
      | .mul =>
        let res := bitblast.blastMul aig ⟨lhs, rhs⟩
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastMul)
          dsimp only at hlaig hraig
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastMul) ..)⟩
      | .udiv =>
        let res := bitblast.blastUdiv aig ⟨lhs, rhs⟩
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastUdiv)
          dsimp only at hlaig hraig
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastUdiv) ..)⟩
      | .umod =>
        let res := bitblast.blastUmod aig ⟨lhs, rhs⟩
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastUmod)
          dsimp only at hlaig hraig
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastUmod) ..)⟩
    | .un op expr =>
      let ⟨⟨⟨eaig, evec⟩, heaig⟩, cache⟩ := goCache aig expr cache
      match op with
      | .not =>
        let res := bitblast.blastNot eaig evec
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastNot)
          dsimp only at heaig
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastNot) ..)⟩
      | .rotateLeft distance =>
        let res := bitblast.blastRotateLeft eaig ⟨evec, distance⟩
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastRotateLeft)
          dsimp only at heaig
          assumption
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastRotateLeft) ..)⟩
      | .rotateRight distance =>
        let res := bitblast.blastRotateRight eaig ⟨evec, distance⟩
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastRotateRight)
          dsimp only at heaig
          assumption
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastRotateRight) ..)⟩
      | .arithShiftRightConst distance =>
        let res := bitblast.blastArithShiftRightConst eaig ⟨evec, distance⟩
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastArithShiftRightConst)
          dsimp only at heaig
          assumption
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastArithShiftRightConst) ..)⟩
      | .reverse =>
        let res := bitblast.blastReverse eaig evec
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastReverse)
          dsimp only at heaig
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastReverse) ..)⟩
      | .clz =>
        let res := bitblast.blastClz eaig evec
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastClz)
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastClz) ..)⟩
      | .cpop =>
        let res := bitblast.blastCpop eaig evec
        have := by
          apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastCpop)
          omega
        ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastCpop) ..)⟩
    | .append lhs rhs h =>
      let ⟨⟨⟨aig, lhs⟩, hlaig⟩, cache⟩ := goCache aig lhs cache
      let ⟨⟨⟨aig, rhs⟩, hraig⟩, cache⟩ := goCache aig rhs cache
      let lhs := lhs.cast <| by
        dsimp only at hlaig hraig
        omega
      let res := bitblast.blastAppend aig ⟨lhs, rhs, by rw [Nat.add_comm, h]⟩
      have := by
        apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastAppend)
        dsimp only at hlaig hraig
        omega
      ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastAppend) ..)⟩
    | .replicate n expr h =>
      let ⟨⟨⟨aig, expr⟩, haig⟩, cache⟩ := goCache aig expr cache
      let res := bitblast.blastReplicate aig ⟨n, expr, h⟩
      have := by
        apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastReplicate)
        dsimp only at haig
        assumption
      ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastReplicate) ..)⟩
    | .extract start len expr =>
      let ⟨⟨⟨eaig, evec⟩, heaig⟩, cache⟩ := goCache aig expr cache
      let res := bitblast.blastExtract eaig ⟨evec, start⟩
      have := by
        apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastExtract)
        dsimp only at heaig
        exact heaig
      ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastExtract) ..)⟩
    | .shiftLeft lhs rhs =>
      let ⟨⟨⟨aig, lhs⟩, hlaig⟩, cache⟩ := goCache aig lhs cache
      let ⟨⟨⟨aig, rhs⟩, hraig⟩, cache⟩ := goCache aig rhs cache
      let lhs := lhs.cast <| by
        dsimp only at hlaig hraig
        omega
      let res := bitblast.blastShiftLeft aig ⟨_, lhs, rhs⟩
      have := by
        apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastShiftLeft)
        dsimp only at hlaig hraig
        omega
      ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastShiftLeft) ..)⟩
    | .shiftRight lhs rhs =>
      let ⟨⟨⟨aig, lhs⟩, hlaig⟩, cache⟩ := goCache aig lhs cache
      let ⟨⟨⟨aig, rhs⟩, hraig⟩, cache⟩ := goCache aig rhs cache
      let lhs := lhs.cast <| by
        dsimp only at hlaig hraig
        omega
      let res := bitblast.blastShiftRight aig ⟨_, lhs, rhs⟩
      have := by
        apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastShiftRight)
        dsimp only at hlaig hraig
        omega
      ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastShiftRight) ..)⟩
    | .arithShiftRight lhs rhs =>
      let ⟨⟨⟨aig, lhs⟩, hlaig⟩, cache⟩ := goCache aig lhs cache
      let ⟨⟨⟨aig, rhs⟩, hraig⟩, cache⟩ := goCache aig rhs cache
      let lhs := lhs.cast <| by
        dsimp only at hlaig hraig
        omega
      let res := bitblast.blastArithShiftRight aig ⟨_, lhs, rhs⟩
      have := by
        apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := bitblast.blastArithShiftRight)
        dsimp only at hlaig hraig
        omega
      ⟨⟨res, this⟩, cache.cast (AIG.LawfulVecOperator.le_size (f := bitblast.blastArithShiftRight) ..)⟩
  termination_by (sizeOf expr, 0)


namespace bitblast

mutual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa84c0eb0b6af118ad3e6f92cf97991b131e463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
