# blastExtractAndExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcb14f9da8d9d6c7aa33ba44d5f5f435f17cd9bd0ecb89bfe02064c2b8246983",
  "kind": "def",
  "lexical_name": "blastExtractAndExtend",
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
  "slug": "blastextractandextend--eb38cdee0f2fde2690216812",
  "source": {
    "blob": "36bbfc698eb01959203cb13d1790a773ccc54009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantad66240b962ef8c5e73f5e46b56de8e8c22d24905ed1b6909a24afca47136bb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb38cdee0f2fde2690216812c1d6585a48744a42e1d65db1725a1683a9e42d8e",
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

Occurrence: `declaration:bcb14f9da8d9d6c7aa33ba44d5f5f435f17cd9bd0ecb89bfe02064c2b8246983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastExtractAndExtend (aig : AIG α) (target : blastExtractAndExtendTarget aig outWidth) :
    AIG.RefVecEntry α outWidth :=
  let ⟨x, h⟩ := target
  let initAcc := blastConst (aig := aig) (w := 0) (val := 0)
  go 0 x initAcc (by omega) h
where
  go {aig : AIG α} {w : Nat} (idx : Nat) (x : AIG.RefVec aig w) (acc : AIG.RefVec aig (w * idx))
      (h : idx ≤ w) (h' : outWidth = w * w) :=
    if hidx : idx < w then
      let res := blastExtractAndExtendBit aig ⟨idx, x⟩
      have := AIG.LawfulVecOperator.le_size (f := blastExtractAndExtendBit) ..
      let aig := res.aig
      let bv := res.vec
      let acc := acc.cast this
      let x := x.cast this
      let acc := acc.append bv
      have hcast : w * (idx + 1) = w * idx + w := by simp [Nat.mul_add]
      have acc := hcast ▸ acc
      go (idx + 1) (x := x) (acc := acc) (by omega) h'
    else
      have hcast : w * idx = outWidth := by
        simp only [show idx = w by omega, h']
      ⟨aig, hcast ▸ acc⟩
termination_by w - idx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantad66240b962ef8c5e73f5e46b56de8e8c22d24905ed1b6909a24afca47136bb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cpop/Variantad66240b962ef8c5e73f5e46b56de8e8c22d24905ed1b6909a24afca47136bb2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36bbfc698eb01959203cb13d1790a773ccc54009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
