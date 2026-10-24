# test_sorry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b222124581547cf0bd90f1ff4e831cd218ac450477ee3f64ddda8e049a46120",
  "kind": "axiom",
  "lexical_name": "test_sorry",
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
  "slug": "test-sorry--269e6b3facced7d2a9aa454f",
  "source": {
    "blob": "ad921934de09745a1b04a3f25fbe8cf550a35149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 9,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:269e6b3facced7d2a9aa454f7ae2883a707e674fcd19c17bd2d3085ef0aea24b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `axiom` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b222124581547cf0bd90f1ff4e831cd218ac450477ee3f64ddda8e049a46120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private axiom test_sorry : ∀ {α}, α
/-!
This is a test file for the tactic `mfld_set_tac`. Because this tactic applies a simp-set which
mostly contains lemmas in advanced parts of mathlib, it is currently impossible to truly test it
in realistic conditions. Instead, we create stub definitions and lemmas on objects such as
`PartialHomeomorph`, label them with `mfld_simps` and run tests on those.
-/

open Lean Meta Elab Tactic

/-! ## Syntax of objects and lemmas needed for testing `MfldSetTac` -/

set_option autoImplicit true
section stub_lemmas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad921934de09745a1b04a3f25fbe8cf550a35149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
