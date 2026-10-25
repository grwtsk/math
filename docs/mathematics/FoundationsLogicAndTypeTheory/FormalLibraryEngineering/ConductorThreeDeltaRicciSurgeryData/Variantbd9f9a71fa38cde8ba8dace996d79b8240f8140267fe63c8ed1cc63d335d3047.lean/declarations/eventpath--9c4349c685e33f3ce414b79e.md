# EventPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68cae98e24c92fe6678f2d95e5394dc665dabbbbc70bbde750e6196d1b2dbb8c",
  "kind": "inductive",
  "lexical_name": "EventPath",
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
  "slug": "eventpath--9c4349c685e33f3ce414b79e",
  "source": {
    "blob": "44b1cc08cb6231dcca388a44a5116d8627793176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 626,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c4349c685e33f3ce414b79eb0f94a27ad9e8a4c2b3229451d9eca11326fb4a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68cae98e24c92fe6678f2d95e5394dc665dabbbbc70bbde750e6196d1b2dbb8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive EventPath (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N) :
    TypeIIBilinearSurgeryState (data.scaleData N hN) → ℕ → Prop
  | nil (state) : EventPath data N hN state 0
  | step {state child length}
      (isChild : (data.nextEvent N hN state).IsChild child)
      (tail : EventPath data N hN child length) :
      EventPath data N hN state (length + 1)

/-- Strict quantized descent gives a finite, but generally non-polylogarithmic,
upper bound on every event path. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantbd9f9a71fa38cde8ba8dace996d79b8240f8140267fe63c8ed1cc63d335d3047.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b1cc08cb6231dcca388a44a5116d8627793176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
