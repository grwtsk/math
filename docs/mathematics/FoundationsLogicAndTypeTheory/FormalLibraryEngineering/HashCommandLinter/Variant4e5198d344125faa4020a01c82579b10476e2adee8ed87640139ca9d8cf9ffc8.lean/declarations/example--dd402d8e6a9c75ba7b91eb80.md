# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c14859f48e433064948aa4f75faec238e5caceb22ba597ad90ba9edd5738e72",
  "kind": "example",
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
  "slug": "example--dd402d8e6a9c75ba7b91eb80",
  "source": {
    "blob": "4193342406c141b497adf292ea5a7b22085af867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd402d8e6a9c75ba7b91eb80a4908abbc2efe32764ab3bd1034690058641cfc8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c14859f48e433064948aa4f75faec238e5caceb22ba597ad90ba9edd5738e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {n : Nat} : Nat := 0

section warningAsError

-- if `warningAsError = true`, log an info (instead of a warning) on all `#`-commands, noisy or not
set_option warningAsError true
/--
info: 0
---
info: `#`-commands, such as '#eval', are not allowed in 'Mathlib' [linter.hashCommand]
-/
#guard_msgs in
#eval 0

/--
info: `#`-commands, such as '#guard', are not allowed in 'Mathlib' [linter.hashCommand]
-/
#guard_msgs in
#guard true

end warningAsError

end linted_commands
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant4e5198d344125faa4020a01c82579b10476e2adee8ed87640139ca9d8cf9ffc8.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4193342406c141b497adf292ea5a7b22085af867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
