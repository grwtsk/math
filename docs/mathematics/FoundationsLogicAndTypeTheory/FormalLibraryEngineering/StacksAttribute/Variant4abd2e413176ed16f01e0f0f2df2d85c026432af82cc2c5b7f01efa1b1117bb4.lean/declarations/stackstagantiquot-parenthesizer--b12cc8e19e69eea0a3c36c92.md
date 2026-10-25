# stacksTagAntiquot.parenthesizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cec7a6608613cb6e1d7505d9cf8a5152c054c6850d3eb26f136dc27fef1042b3",
  "kind": "def",
  "lexical_name": "stacksTagAntiquot.parenthesizer",
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
  "slug": "stackstagantiquot-parenthesizer--b12cc8e19e69eea0a3c36c92",
  "source": {
    "blob": "4ad6922bda2a802afa3a124e52fa90a0d4a08b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant4abd2e413176ed16f01e0f0f2df2d85c026432af82cc2c5b7f01efa1b1117bb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b12cc8e19e69eea0a3c36c92f8478e5ef815379d6251d918e977b238eda61cf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant4abd2e413176ed16f01e0f0f2df2d85c026432af82cc2c5b7f01efa1b1117bb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cec7a6608613cb6e1d7505d9cf8a5152c054c6850d3eb26f136dc27fef1042b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[combinator_parenthesizer stacksTagNoAntiquot] def stacksTagAntiquot.parenthesizer := visitToken

end Lean.PrettyPrinter.Parenthesizer

namespace Mathlib.StacksTag

/-- The syntax category for the database name. -/
declare_syntax_cat stacksTagDB

/-- The syntax for a "kerodon" database identifier in a `@[kerodon]` attribute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant4abd2e413176ed16f01e0f0f2df2d85c026432af82cc2c5b7f01efa1b1117bb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant4abd2e413176ed16f01e0f0f2df2d85c026432af82cc2c5b7f01efa1b1117bb4.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ad6922bda2a802afa3a124e52fa90a0d4a08b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
