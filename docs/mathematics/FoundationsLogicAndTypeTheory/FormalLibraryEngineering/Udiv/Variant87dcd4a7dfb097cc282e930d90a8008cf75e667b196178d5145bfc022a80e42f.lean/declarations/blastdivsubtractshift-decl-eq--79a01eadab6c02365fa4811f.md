# blastDivSubtractShift_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39e640013276c840da16d3db06d52ae57c65cb65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb55bb7d-b84f-7a3f-511f-15a07e90996c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69c72a44-fa4c-49ee-37b8-0f332dd2b627",
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
  "slug": "blastdivsubtractshift-decl-eq--79a01eadab6c02365fa4811f",
  "source": {
    "blob": "39e640013276c840da16d3db06d52ae57c65cb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a01eadab6c02365fa4811fd9e9d8ffc600b348668208c982b41aed131c63c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69c72a44-fa4c-49ee-37b8-0f332dd2b627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–191.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e640013276c840da16d3db06d52ae57c65cb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
