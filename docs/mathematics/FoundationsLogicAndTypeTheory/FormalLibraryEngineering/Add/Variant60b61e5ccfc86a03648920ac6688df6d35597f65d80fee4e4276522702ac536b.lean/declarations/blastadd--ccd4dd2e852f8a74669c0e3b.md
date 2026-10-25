# blastAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b92e730f05f8ef9b979f7861b8f60e36953993a298c9c3b7d17e80128c3cf0e6",
  "kind": "def",
  "lexical_name": "blastAdd",
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
  "slug": "blastadd--ccd4dd2e852f8a74669c0e3b",
  "source": {
    "blob": "cb7b95e6449d2041e6cf5012b20a3858fbd816c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccd4dd2e852f8a74669c0e3b79e8698b3499e1abd6cea389ade51e4ede3ce5e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b92e730f05f8ef9b979f7861b8f60e36953993a298c9c3b7d17e80128c3cf0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastAdd (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
  if input.lhs.countKnown < input.rhs.countKnown then
    blast aig input
  else
    let ⟨lhs, rhs⟩ := input
    blast aig ⟨rhs, lhs⟩
where
  blast (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
    let cin := aig.mkConstCached false
    let ⟨lhs, rhs⟩ := input
    go aig lhs rhs 0 (by omega) cin (.emptyWithCapacity w)

  go (aig : AIG α) (lhs rhs : AIG.RefVec aig w) (curr : Nat) (hcurr : curr ≤ w) (cin : AIG.Ref aig)
      (s : AIG.RefVec aig curr) :
      AIG.RefVecEntry α w :=
    if hidx : curr < w then
      let lin := lhs.get curr hidx
      let rin := rhs.get curr hidx
      let res := mkFullAdder aig ⟨lin, rin, cin⟩
      let aig := res.aig
      let outRef := res.out
      let carryRef := res.cout
      let s := s.cast res.hle
      let lhs := lhs.cast res.hle
      let rhs := rhs.cast res.hle
      let s := s.push outRef
      go aig lhs rhs (curr + 1) (by omega) carryRef s
    else
      have hcurr : curr = w := by omega
      ⟨aig, hcurr ▸ s⟩
  termination_by w - curr

namespace blastAdd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7b95e6449d2041e6cf5012b20a3858fbd816c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
