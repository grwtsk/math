# mkOverflowBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:106370339d7e98c213b4403aa9220afd3c26fb7c6fc4ca26642a87145a4ccdd0",
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
  "slug": "mkoverflowbit--72a2f29fdf23187a6ebd5a94",
  "source": {
    "blob": "98c02fdb457a7d0fc22267b41292814074ed0145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72a2f29fdf23187a6ebd5a942e8b9d3327a834d0fe8864cdf52020464636c7e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:106370339d7e98c213b4403aa9220afd3c26fb7c6fc4ca26642a87145a4ccdd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–57.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98c02fdb457a7d0fc22267b41292814074ed0145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
