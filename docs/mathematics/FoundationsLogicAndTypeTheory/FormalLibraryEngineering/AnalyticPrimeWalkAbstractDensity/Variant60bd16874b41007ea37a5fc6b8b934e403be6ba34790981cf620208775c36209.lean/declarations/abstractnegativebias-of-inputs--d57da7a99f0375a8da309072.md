# abstractNegativeBias_of_inputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41ef7048-5169-4e35-c771-467856bc87f7",
  "kind": "theorem",
  "lexical_name": "abstractNegativeBias_of_inputs",
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
  "slug": "abstractnegativebias-of-inputs--d57da7a99f0375a8da309072",
  "source": {
    "blob": "427795df8bd4b3df31b54eb022f12949346c33bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57da7a99f0375a8da309072d30f26d2e03f7321b294f1ec54cdcb2db39438ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ef7048-5169-4e35-c771-467856bc87f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abstractNegativeBias_of_inputs
    (model : AnalyticBridgeHypotheses)
    (inputs : AbstractRubinsteinSarnakInputs model) :
    HasAbstractNegativeBias inputs.functional
      (negativeIndexedObservableEvent model) := by
  exact ⟨inputs.density, inputs.eventHasDensity, inputs.density_gt_half⟩

/-- The same supplied abstract bias transported to the exactly equal
arithmetic sign event. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticPrimeWalkAbstractDensity/Variant60bd16874b41007ea37a5fc6b8b934e403be6ba34790981cf620208775c36209.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `427795df8bd4b3df31b54eb022f12949346c33bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
