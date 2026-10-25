# Arith.Cutsat.pp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09d87d4d69ef5cd0d01f058567c46f6675a37415d2211d75e2701027ccfc0ad7",
  "kind": "def",
  "lexical_name": "Arith.Cutsat.pp?",
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
  "slug": "arith-cutsat-pp--b18e2397b2d69bbbf29ed028",
  "source": {
    "blob": "a0fa7b056c34b81d2441d78ef8cda8fd3719882a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b18e2397b2d69bbbf29ed02830be4518c6d99826ff6340d6f10f98f4c13228a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09d87d4d69ef5cd0d01f058567c46f6675a37415d2211d75e2701027ccfc0ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Arith.Cutsat.pp? (goal : Goal) : MetaM (Option MessageData) := do
  let s ← Arith.Cutsat.cutsatExt.getStateCore goal
  let nodes := s.varMap
  if nodes.isEmpty then return none
  -- The assignment is partial (and does not satisfy the constraints) if the search
  -- was interrupted because the `liaSteps` threshold was reached.
  if s.assignment.size < s.vars.size then return none
  let model ← Arith.Cutsat.mkModel goal
  if model.isEmpty then return none
  let mut ms := #[]
  for (e, val) in model do
    ms := ms.push <| .trace { cls := `assign } m!"{Arith.quoteIfArithTerm e} := {val}" #[]
  return some <| .trace { cls := `cutsat } "Assignment satisfying linear constraints" ms

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0fa7b056c34b81d2441d78ef8cda8fd3719882a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
