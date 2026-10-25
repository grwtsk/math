# blastDivSubtractShift_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e39a1cb-f1c6-ea94-5b67-9032af3f70c9",
  "kind": "theorem",
  "lexical_name": "blastDivSubtractShift_decl_eq",
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
  "slug": "blastdivsubtractshift-decl-eq--5cfdb21493ae99813c59529b",
  "source": {
    "blob": "b1a3129737615efcf96918137d9a73af7ccbfb56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant2a9d0385dae2d7880142107196b07d8539c18c2b6e845ce7e59ae6ffb2e3f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cfdb21493ae99813c59529b1b31265f52af3403afe00d82b5e450c61d483939",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant2a9d0385dae2d7880142107196b07d8539c18c2b6e845ce7e59ae6ffb2e3f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e39a1cb-f1c6-ea94-5b67-9032af3f70c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blastDivSubtractShift_decl_eq (aig : AIG α) (n d : AIG.RefVec aig w) (wn wr : Nat)
    (q r : AIG.RefVec aig w) :
    ∀ (idx : Nat) (h1) (h2),
        (blastDivSubtractShift aig n d wn wr q r).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hres : blastDivSubtractShift aig n d wn wr q r = res
  unfold blastDivSubtractShift at hres
  dsimp only at hres
  rw [← hres]
  intros
  rw [AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.ite)]
  rw [AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.ite)]
  rw [AIG.LawfulOperator.decl_eq (f := BVPred.mkUlt)]
  rw [AIG.LawfulVecOperator.decl_eq (f := blastSub)]
  rw [AIG.LawfulVecOperator.decl_eq (f := blastUdiv.blastShiftConcat)]
  rw [AIG.LawfulVecOperator.decl_eq (f := blastUdiv.blastShiftConcat)]
  rw [AIG.LawfulVecOperator.decl_eq (f := blastUdiv.blastShiftConcat)]
  · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    assumption
  · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    assumption
  · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    assumption
  · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastSub)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    assumption
  · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkUlt)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastSub)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    assumption
  · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := AIG.RefVec.ite)
    apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVPred.mkUlt)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastSub)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastUdiv.blastShiftConcat)
    assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant2a9d0385dae2d7880142107196b07d8539c18c2b6e845ce7e59ae6ffb2e3f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant2a9d0385dae2d7880142107196b07d8539c18c2b6e845ce7e59ae6ffb2e3f021.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a3129737615efcf96918137d9a73af7ccbfb56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
