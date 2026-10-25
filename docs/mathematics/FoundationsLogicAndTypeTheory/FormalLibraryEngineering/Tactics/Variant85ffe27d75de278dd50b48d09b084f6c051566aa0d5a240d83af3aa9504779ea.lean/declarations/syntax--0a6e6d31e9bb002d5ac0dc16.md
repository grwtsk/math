# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3af291bedbcc00ead3f8dbfffd511d84c00753fd7b80237e5e533c51b59a6363",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--0a6e6d31e9bb002d5ac0dc16",
  "source": {
    "blob": "811f890424224ec32ffc7f808e77dbb632f51ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant85ffe27d75de278dd50b48d09b084f6c051566aa0d5a240d83af3aa9504779ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a6e6d31e9bb002d5ac0dc16c90288474501174772a61e8764324b5208450ee9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant85ffe27d75de278dd50b48d09b084f6c051566aa0d5a240d83af3aa9504779ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3af291bedbcc00ead3f8dbfffd511d84c00753fd7b80237e5e533c51b59a6363`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax (name := grobner) "grobner" optConfig : tactic

/-!
Sets symbol priorities for the E-matching pattern inference procedure used in `grind`
-/

-- The following symbols are never used in E-matching patterns
attribute [grind symbol 0] Eq HEq Iff And Or Not ite dite
/-
Remark for `ite` and `dite`: recall the then/else branches
are only internalized after `grind` decided whether the condition is
`True`/`False`. Thus, they **must** not be used a `grind` patterns.
-/

-- The following symbols are only used as the root pattern symbol if there isn't another option
attribute [grind symbol low] HAdd.hAdd HSub.hSub HMul.hMul HSMul.hSMul Dvd.dvd HDiv.hDiv HMod.hMod

-- TODO: improve pattern inference heuristics and reduce priority for LT.lt and LE.le
-- attribute [grind symbol low] LT.lt LE.le
end Lean.Parser.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant85ffe27d75de278dd50b48d09b084f6c051566aa0d5a240d83af3aa9504779ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant85ffe27d75de278dd50b48d09b084f6c051566aa0d5a240d83af3aa9504779ea.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `811f890424224ec32ffc7f808e77dbb632f51ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
