# Cont'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4c266b1ea330a09f8f4cb1c577fbd9d1052906d11cce4e4cae183f6d9369272",
  "kind": "inductive",
  "lexical_name": "Cont'",
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
  "slug": "cont--67cf0e2c9b1c4b8b22ba5c39",
  "source": {
    "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 901,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67cf0e2c9b1c4b8b22ba5c39988955bb3b111d635edd025dae531e4ae4ee7e14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4c266b1ea330a09f8f4cb1c577fbd9d1052906d11cce4e4cae183f6d9369272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 901–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Cont'
  | halt
  | cons₁ : Code → Cont' → Cont'
  | cons₂ : Cont' → Cont'
  | comp : Code → Cont' → Cont'
  | fix : Code → Cont' → Cont'
  deriving DecidableEq, Inhabited
#align turing.partrec_to_TM2.cont' Turing.PartrecToTM2.Cont'
#align turing.partrec_to_TM2.cont'.halt Turing.PartrecToTM2.Cont'.halt
#align turing.partrec_to_TM2.cont'.cons₁ Turing.PartrecToTM2.Cont'.cons₁
#align turing.partrec_to_TM2.cont'.cons₂ Turing.PartrecToTM2.Cont'.cons₂
#align turing.partrec_to_TM2.cont'.comp Turing.PartrecToTM2.Cont'.comp
#align turing.partrec_to_TM2.cont'.fix Turing.PartrecToTM2.Cont'.fix

/-- The set of program positions. We make extensive use of inductive types here to let us describe
"subroutines"; for example `clear p k q` is a program that clears stack `k`, then does `q` where
`q` is another label. In order to prevent this from resulting in an infinite number of distinct
accessible states, we are careful to be non-recursive (although loops are okay). See the section
documentation for a description of all the programs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean#L901).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6689a642cb737eed9cc443ce79432f68557e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
