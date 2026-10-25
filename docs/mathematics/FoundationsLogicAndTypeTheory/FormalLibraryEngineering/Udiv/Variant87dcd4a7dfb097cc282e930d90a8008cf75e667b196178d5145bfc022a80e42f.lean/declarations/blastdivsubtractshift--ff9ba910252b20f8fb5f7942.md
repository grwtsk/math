# blastDivSubtractShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c54a368c9e214b822b064a5d2eb6dcd61ec399be4906a78fb9c74082aa1555eb",
  "kind": "def",
  "lexical_name": "blastDivSubtractShift",
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
  "slug": "blastdivsubtractshift--ff9ba910252b20f8fb5f7942",
  "source": {
    "blob": "39e640013276c840da16d3db06d52ae57c65cb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff9ba910252b20f8fb5f7942116f654b1d9d2833ec8d10cd05b8c4e55117d275",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c54a368c9e214b822b064a5d2eb6dcd61ec399be4906a78fb9c74082aa1555eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastDivSubtractShift (aig : AIG α) (n d : AIG.RefVec aig w) (wn wr : Nat)
    (q r : AIG.RefVec aig w) : BlastDivSubtractShiftOutput aig w :=
  let wn := wn - 1
  let wr := wr + 1
  let falseRef := aig.mkConstCached false
  let res := blastUdiv.blastShiftConcat aig ⟨r, n.getD wn falseRef⟩
  let aig := res.aig
  let r' := res.vec
  have := AIG.LawfulVecOperator.le_size (f := blastUdiv.blastShiftConcat) ..
  let d := d.cast this
  let q := q.cast this

  let falseRef := aig.mkConstCached false
  let res := blastUdiv.blastShiftConcat aig ⟨q, falseRef⟩
  let aig := res.aig
  let posQ := res.vec
  have := AIG.LawfulVecOperator.le_size (f := blastUdiv.blastShiftConcat) ..
  let d := d.cast this
  let q := q.cast this
  let r' := r'.cast this

  let trueRef := aig.mkConstCached true
  let res := blastUdiv.blastShiftConcat aig ⟨q, trueRef⟩
  let aig := res.aig
  let negQ := res.vec
  have := AIG.LawfulVecOperator.le_size (f := blastUdiv.blastShiftConcat) ..
  let d := d.cast this
  let r' := r'.cast this
  let posQ := posQ.cast this

  let res := blastSub aig ⟨r', d⟩
  let aig := res.aig
  let negR := res.vec
  have := AIG.LawfulVecOperator.le_size (f := blastSub) ..
  let d := d.cast this
  let r' := r'.cast this
  let posQ := posQ.cast this
  let negQ := negQ.cast this

  let posR := r'

  let res := BVPred.mkUlt aig ⟨r', d⟩
  let aig := res.aig
  let discr := res.ref
  have := AIG.LawfulOperator.le_size (f := BVPred.mkUlt) ..
  let posQ := posQ.cast this
  let negQ := negQ.cast this
  let posR := posR.cast this
  let negR := negR.cast this

  let res := AIG.RefVec.ite aig ⟨discr, posQ, negQ⟩
  let aig := res.aig
  let nextQ := res.vec
  have := AIG.LawfulVecOperator.le_size (f := AIG.RefVec.ite) ..
  let posR := posR.cast this
  let negR := negR.cast this
  let discr := discr.cast this

  let res := AIG.RefVec.ite aig ⟨discr, posR, negR⟩
  let aig := res.aig
  let nextR := res.vec
  have := AIG.LawfulVecOperator.le_size (f := AIG.RefVec.ite) ..
  let nextQ := nextQ.cast this
  have := by
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := AIG.RefVec.ite)
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := AIG.RefVec.ite)
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := BVPred.mkUlt)
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastSub)
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastShiftConcat)
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastShiftConcat)
    apply AIG.LawfulVecOperator.le_size (f := blastShiftConcat)
  ⟨aig, wn, wr, nextQ, nextR, this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e640013276c840da16d3db06d52ae57c65cb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
