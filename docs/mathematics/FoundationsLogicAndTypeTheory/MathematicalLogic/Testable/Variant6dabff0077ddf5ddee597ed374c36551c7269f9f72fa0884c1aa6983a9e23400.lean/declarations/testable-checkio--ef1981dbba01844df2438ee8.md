# Testable.checkIO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6020e241b91c0c6f7d966d9d9b7705ce55d2bb88fe7fcbe064ee3713647ce385",
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
  "slug": "testable-checkio--ef1981dbba01844df2438ee8",
  "source": {
    "blob": "8ef01fc0035c3961511f754303bce04f57738070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 482,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef1981dbba01844df2438ee892eb883b3fccfedb59f784afc88fed902d3910a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6020e241b91c0c6f7d966d9d9b7705ce55d2bb88fe7fcbe064ee3713647ce385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Testable.checkIO (p : Prop) [Testable p] (cfg : Configuration := {}) : BaseIO (TestResult p) :=
  match cfg.randomSeed with
  | none => IO.runRand (Testable.runSuite p cfg)
  | some seed => IO.runRandWith seed (Testable.runSuite p cfg)

end IO

namespace Decorations

open Lean

/-- Traverse the syntax of a proposition to find universal quantifiers
quantifiers and add `NamedBinder` annotations next to them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ef01fc0035c3961511f754303bce04f57738070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
