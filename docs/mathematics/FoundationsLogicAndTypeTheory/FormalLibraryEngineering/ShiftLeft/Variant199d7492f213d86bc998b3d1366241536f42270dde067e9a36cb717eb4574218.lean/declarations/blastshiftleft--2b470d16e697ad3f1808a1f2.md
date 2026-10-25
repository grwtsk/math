# blastShiftLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83200e9d65f39050105c1e09bcd0edb1c49911bebd6146aa64fcbc85abbef0d4",
  "kind": "def",
  "lexical_name": "blastShiftLeft",
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
  "slug": "blastshiftleft--2b470d16e697ad3f1808a1f2",
  "source": {
    "blob": "b08345f004b158fd8c60d06f8f0fce9762cbe690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b470d16e697ad3f1808a1f25cd9f9414bd85b93d38f7fc24c12b507be41b17b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83200e9d65f39050105c1e09bcd0edb1c49911bebd6146aa64fcbc85abbef0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def blastShiftLeft (aig : AIG α) (target : AIG.ArbitraryShiftTarget aig w) :
    AIG.RefVecEntry α w :=
  let ⟨n, input, distance⟩ := target
  if n = 0 then
    ⟨aig, input⟩
  else
    let res := blastShiftLeft.twoPowShift aig ⟨_, input, distance, 0⟩
    let aig := res.aig
    let acc := res.vec
    have := AIG.LawfulVecOperator.le_size (f := blastShiftLeft.twoPowShift) ..
    let distance := distance.cast this
    go aig distance 0 acc
where
  go {n : Nat} (aig : AIG α) (distance : AIG.RefVec aig n) (curr : Nat)
      (acc : AIG.RefVec aig w) :
      AIG.RefVecEntry α w :=
    if curr < n - 1 then
      let res := blastShiftLeft.twoPowShift aig ⟨_, acc, distance, curr + 1⟩
      let aig := res.aig
      let acc := res.vec
      have := AIG.LawfulVecOperator.le_size (f := blastShiftLeft.twoPowShift) ..
      let distance := distance.cast this
      go aig distance (curr + 1) acc
    else
      ⟨aig, acc⟩
  termination_by n - 1 - curr


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variant199d7492f213d86bc998b3d1366241536f42270dde067e9a36cb717eb4574218.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b08345f004b158fd8c60d06f8f0fce9762cbe690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
