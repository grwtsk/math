# blastCpopLayer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a4e5c0ca11096f0aafa784919c4ec95e2a4b628119c9af2590b88f70ae78248",
  "kind": "def",
  "lexical_name": "blastCpopLayer",
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
  "slug": "blastcpoplayer--420de60aff9cdb0e3f18ecd8",
  "source": {
    "blob": "36bbfc698eb01959203cb13d1790a773ccc54009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantad66240b962ef8c5e73f5e46b56de8e8c22d24905ed1b6909a24afca47136bb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:420de60aff9cdb0e3f18ecd80a26e3778b9f5bd7ef1fc7f5b94f6ef5705fea34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantad66240b962ef8c5e73f5e46b56de8e8c22d24905ed1b6909a24afca47136bb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a4e5c0ca11096f0aafa784919c4ec95e2a4b628119c9af2590b88f70ae78248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastCpopLayer (aig : AIG α) (target : blastCpopLayerTarget aig outWidth) :
    AIG.RefVecEntry α outWidth :=
  let ⟨oldLayer, h, hlen⟩ := target
  let initAcc := blastConst aig (w := 0 * _) (val := 0)
  go 0 oldLayer initAcc
    (by simp only [Nat.zero_le, Nat.sub_eq_zero_of_le, Nat.mul_zero, hlen]) h
where
  go {aig : AIG α} {w len : Nat} (iterNum : Nat)
    (oldLayer : AIG.RefVec aig (len * w)) (newLayer : AIG.RefVec aig (iterNum * w))
    (hold : 2 * (iterNum - 1) < len) (hout : outWidth = (len + 1) / 2 * w) :=
  if  hlen : 0 < len - (iterNum * 2) then
    -- lhs
    let res := blastExtract aig ⟨oldLayer, 2 * iterNum * w⟩
    let aig := res.aig
    let op1 : aig.RefVec w := res.vec
    have := AIG.LawfulVecOperator.le_size (f := blastExtract) ..
    let oldLayer := oldLayer.cast this
    let newLayer := newLayer.cast this
    -- rhs
    let res := blastExtract aig ⟨oldLayer, (2 * iterNum + 1) * w⟩
    let aig := res.aig
    let op2 : aig.RefVec w := res.vec
    have := AIG.LawfulVecOperator.le_size (f := blastExtract) ..
    let oldLayer := oldLayer.cast this
    let newLayer := newLayer.cast this
    let op1 := op1.cast this
    -- add
    let res := blastAdd aig ⟨op1, op2⟩
    let aig := res.aig
    let add := res.vec
    have := AIG.LawfulVecOperator.le_size (f := blastAdd) ..
    let oldLayer := oldLayer.cast this
    let newLayer := newLayer.cast this
    let res := blastAppend (aig := aig) ⟨add, newLayer, by simp [Nat.add_mul]⟩
    let aig := res.aig
    let newLayer := res.vec
    have := AIG.LawfulVecOperator.le_size (f := blastAppend) ..
    let oldLayer := oldLayer.cast this
    go (iterNum + 1) oldLayer newLayer (by omega) hout
  else
    have hcast : iterNum * w = outWidth := by
      simp [show iterNum = (len + 1)/ 2 by omega, hout]
    ⟨aig, hcast ▸ newLayer⟩
termination_by len - iterNum * 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantad66240b962ef8c5e73f5e46b56de8e8c22d24905ed1b6909a24afca47136bb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantad66240b962ef8c5e73f5e46b56de8e8c22d24905ed1b6909a24afca47136bb2.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36bbfc698eb01959203cb13d1790a773ccc54009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
