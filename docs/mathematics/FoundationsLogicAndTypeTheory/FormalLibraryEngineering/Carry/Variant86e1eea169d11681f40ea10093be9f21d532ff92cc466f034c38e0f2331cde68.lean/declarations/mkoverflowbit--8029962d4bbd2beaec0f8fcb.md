# mkOverflowBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93bd2d9f019c63d6b503dd8c7cdab57b0acd3ef24408601a72ac0e082954ccdf",
  "kind": "def",
  "lexical_name": "mkOverflowBit",
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
  "slug": "mkoverflowbit--8029962d4bbd2beaec0f8fcb",
  "source": {
    "blob": "014887a64b20432580b1f1966bd10cdea254dc59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8029962d4bbd2beaec0f8fcb56ae07cf4189721a12914ce3cf6e0649352fb365",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93bd2d9f019c63d6b503dd8c7cdab57b0acd3ef24408601a72ac0e082954ccdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOverflowBit (aig : AIG α) (input : OverflowInput aig) : AIG.Entrypoint α :=
  let ⟨_, ⟨lhs, rhs⟩, cin⟩ := input
  go aig lhs rhs 0 cin
where
  go {w : Nat} (aig : AIG α) (lhs rhs : AIG.RefVec aig w) (curr : Nat)
      (cin : AIG.Ref aig) :
      AIG.Entrypoint α :=
    if hidx : curr < w then
      let lin := lhs.get curr hidx
      let rin := rhs.get curr hidx
      let res := mkFullAdderCarry aig ⟨lin, rin, cin⟩
      have := AIG.LawfulOperator.le_size (f := mkFullAdderCarry) ..
      let aig := res.aig
      let carryRef := res.ref
      let lhs := lhs.cast this
      let rhs := rhs.cast this
      go aig lhs rhs (curr + 1) carryRef
    else
      ⟨aig, cin⟩
  termination_by w - curr

namespace mkOverflowBit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014887a64b20432580b1f1966bd10cdea254dc59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
