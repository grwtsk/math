# UnitTube3.measurableSet_carrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61449e3268961a9688f47a1a87848b059a7ad3fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e81716e5-0da8-c355-03c0-89eb0233f32f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e47ea1b-ff54-df92-230c-d079e88da0dd",
  "kind": "theorem",
  "lexical_name": "UnitTube3.measurableSet_carrier",
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
  "slug": "unittube3-measurableset-carrier--6ffd2719c825f242f202aa22",
  "source": {
    "blob": "61449e3268961a9688f47a1a87848b059a7ad3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffd2719c825f242f202aa22b865f6e07d404bd93096db676df61f41233a80b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e47ea1b-ff54-df92-230c-d079e88da0dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UnitTube3.measurableSet_carrier (tube : UnitTube3) :
    MeasurableSet tube.carrier :=
  (Surface.Core.PrimeWalkWangZahlGeometry.UnitTube3.isClosed_carrier
    tube).measurableSet

/-! ## Arithmetic-independent shaded tube families -/

/-- Concrete hypotheses appearing in Corollary 1.10 before the external
union-volume estimate is invoked.

Essential distinctness is the paper's literal
`|T₁ ∩ T₂| ≤ (1/2) max(|T₁|, |T₂|)`.  Lambda density is aggregate density,
not a pointwise or per-tube strengthening. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61449e3268961a9688f47a1a87848b059a7ad3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
