# Testable.checkIO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:606d3ffeabdf5712b66f2db35c4a6d9ff9bfbeb3c4917fe455affacd617eb21b",
  "kind": "def",
  "lexical_name": "Testable.checkIO",
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
  "slug": "testable-checkio--753f8887982f45fba37ac235",
  "source": {
    "blob": "2d1002d88aa1254808abe640d1bc68bfa0222afb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 556,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:753f8887982f45fba37ac23599738f8e8fa08cfa92ec136a527d6404fdf7b012",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:606d3ffeabdf5712b66f2db35c4a6d9ff9bfbeb3c4917fe455affacd617eb21b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Testable.checkIO (p : Prop) [Testable p] (cfg : Configuration := {}) : IO (TestResult p) :=
  match cfg.randomSeed with
  | none => Gen.run (Testable.runSuite p cfg) 0
  | some seed => runRandWith seed (Testable.runSuite p cfg)

end IO

namespace Decorations

open Lean Elab.Tactic Meta

/-- Traverse the syntax of a proposition to find universal quantifiers
quantifiers and add `NamedBinder` annotations next to them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1002d88aa1254808abe640d1bc68bfa0222afb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
