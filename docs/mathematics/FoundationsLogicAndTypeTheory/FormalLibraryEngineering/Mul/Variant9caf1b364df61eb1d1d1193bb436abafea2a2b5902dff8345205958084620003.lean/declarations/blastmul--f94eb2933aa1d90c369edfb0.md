# blastMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:672d4eddf7e2e1715430a3f61083708b51ffd8c5c40d47aba6dbc131aaf059a3",
  "kind": "def",
  "lexical_name": "blastMul",
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
  "slug": "blastmul--f94eb2933aa1d90c369edfb0",
  "source": {
    "blob": "b3a19bca7d06a0e796e66510fd8be2b84c884f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f94eb2933aa1d90c369edfb0ae2bdb8a89592545d6881f5cf7f03229808011ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:672d4eddf7e2e1715430a3f61083708b51ffd8c5c40d47aba6dbc131aaf059a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastMul (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
  if input.lhs.countKnown < input.rhs.countKnown then
    blast aig input
  else
    let ⟨lhs, rhs⟩ := input
    blast aig ⟨rhs, lhs⟩
where
  blast (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
    if h : w = 0 then
      ⟨aig, h ▸ .empty⟩
    else
      have : 0 < w := by omega
      let zero := blastConst aig 0
      let ⟨lhs, rhs⟩ := input
      let res := AIG.RefVec.ite aig ⟨rhs.get 0 (by assumption), lhs, zero⟩
      let aig := res.aig
      let acc := res.vec
      have := AIG.LawfulVecOperator.le_size (f := AIG.RefVec.ite) ..
      let lhs := lhs.cast this
      let rhs := rhs.cast this
      go aig lhs rhs 1 acc

  go (aig : AIG α) (lhs rhs : AIG.RefVec aig w) (curr : Nat) (acc : AIG.RefVec aig w) :
      AIG.RefVecEntry α w :=
    if h : curr < w then
      -- If the rhs is false we can skip this iteration as we would add zero
      if aig.isConstant (rhs.get curr h) false then
        go aig lhs rhs (curr + 1) acc
      else
        let res := blastShiftLeftConst aig ⟨lhs, curr⟩
        let aig := res.aig
        let shifted := res.vec
        have := by apply AIG.LawfulVecOperator.le_size (f := blastShiftLeftConst)
        let lhs := lhs.cast this
        let rhs := rhs.cast this
        let acc := acc.cast this
        let res := blastAdd aig ⟨acc, shifted⟩
        let aig := res.aig
        let added := res.vec
        have := by apply AIG.LawfulVecOperator.le_size (f := blastAdd)
        let lhs := lhs.cast this
        let rhs := rhs.cast this
        let acc := acc.cast this
        let res := AIG.RefVec.ite aig ⟨rhs.get curr h, added, acc⟩
        let aig := res.aig
        let acc := res.vec
        have := by apply AIG.LawfulVecOperator.le_size (f := AIG.RefVec.ite)
        let lhs := lhs.cast this
        let rhs := rhs.cast this
        go aig lhs rhs (curr + 1) acc
    else
      ⟨aig, acc⟩

namespace blastMul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a19bca7d06a0e796e66510fd8be2b84c884f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
