# clearExcept

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb89d14918356bfd99c18e89a83ae91bef7555d7cb7bfa172ef1ea713822ec6f",
  "kind": "def",
  "lexical_name": "clearExcept",
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
  "slug": "clearexcept--57c6be150cc96ea59677883e",
  "source": {
    "blob": "cb82ece338a8e2c507d58a749fee11d80ff36f69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variante3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c6be150cc96ea59677883e017eecb221d2643533ad88a6dee987f48dd5e578",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variante3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb89d14918356bfd99c18e89a83ae91bef7555d7cb7bfa172ef1ea713822ec6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def clearExcept (preserve : Array FVarId) (goal : MVarId) : MetaM MVarId := do
  let toClear ← getVarsToClear preserve
  goal.tryClearMany toClear

/-- Clears all hypotheses it can, except those provided after a minus sign, class instances, and
hidden auxiliary declarations (for example recursive hypotheses). Example:
```
  clear * - h₁ h₂
```
The intent is that `clear * -` only clears user-visible local declarations; hidden auxiliary
declarations should be handled by more specific mechanisms when needed. -/
@[nolint tacticAlt]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variante3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variante3fa4371ab8dd9082da545c8f38cbbf397165e1622b1a14178f32195da638733.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb82ece338a8e2c507d58a749fee11d80ff36f69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
