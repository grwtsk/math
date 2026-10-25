# not_atEnd_inputString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f1ccb6c-5cc0-627d-87f9-7a1318180524",
  "kind": "theorem",
  "lexical_name": "not_atEnd_inputString",
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
  "slug": "not-atend-inputstring--525de5f7a5133edabedddfec",
  "source": {
    "blob": "3ce780bf73e15bd6f81a2437aee3e46bf14269c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:525de5f7a5133edabedddfeca9e9566278fbf519716dbf825dc19ce81ba3bf89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1ccb6c-5cc0-627d-87f9-7a1318180524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem not_atEnd_inputString {c : InputContext} {p : String.Pos.Raw} :
    ¬c.atEnd p → ¬p.atEnd c.inputString := by
  intro h
  let {inputString, endPos := ⟨e⟩, endPos_valid, ..} := c
  cases p
  simp only [String.rawEndPos, String.Pos.Raw.mk_le_mk] at endPos_valid
  simp_all [String.Pos.Raw.atEnd, InputContext.atEnd, String.Pos.Raw.mk_le_mk]
  exact Nat.lt_of_lt_of_le h endPos_valid

/--
Returns the character at position `p` of the input string. Returns `(default : Char)`, which is
`'A'`, if `p` is not a valid position.

Requires evidence, `h`, that `p` is within bounds instead of performing a run-time bounds check as
in `InputContext.get`.

A typical pattern combines `get'` with a dependent `if`-expression to avoid the overhead of an
additional bounds check. For example:
```
def getInBounds? (s : String) (p : String.Pos) : Option Char :=
  if h : s.atEnd p then none else some (s.get' p h)
```
Even with evidence of `¬ s.atEnd p`, `p` may be invalid if a byte index points into the middle of a
multi-byte UTF-8 character.
-/
@[inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce780bf73e15bd6f81a2437aee3e46bf14269c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
