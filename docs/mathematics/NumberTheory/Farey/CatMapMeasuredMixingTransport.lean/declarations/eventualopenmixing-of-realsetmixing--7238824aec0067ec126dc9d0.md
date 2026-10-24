# eventualOpenMixing_of_realSetMixing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:720e3bdb-8162-0df7-304b-7a1af3af85b7",
  "kind": "theorem",
  "lexical_name": "eventualOpenMixing_of_realSetMixing",
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
  "slug": "eventualopenmixing-of-realsetmixing--7238824aec0067ec126dc9d0",
  "source": {
    "blob": "466495b9fb8ffb9c3c55e84c9b73389c69b3531b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7238824aec0067ec126dc9d01a5eefb0ab357517f36ab31eb690259ca70d009a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:720e3bdb-8162-0df7-304b-7a1af3af85b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventualOpenMixing_of_realSetMixing
    (T : X → X) (μ : Measure X)
    (hMix : HasRealSetMixing T μ)
    (hSupport : HasPositiveOpenRealMass μ) :
    EventualOpenMixing T := by
  intro U V hU hV hUNonempty hVNonempty
  have hPos : 0 < μ.real U * μ.real V :=
    mul_pos (hSupport U hU hUNonempty)
      (hSupport V hV hVNonempty)
  have hEventually :
      ∀ᶠ n : ℕ in atTop,
        0 < μ.real (U ∩ (T^[n]) ⁻¹' V) :=
    (hMix U V hU.measurableSet hV.measurableSet).eventually
      (eventually_gt_nhds hPos)
  obtain ⟨N, hN⟩ := Filter.eventually_atTop.1 hEventually
  refine ⟨N, ?_⟩
  intro n hn
  obtain ⟨x, hx⟩ :=
    MeasureTheory.nonempty_of_measureReal_ne_zero
      (ne_of_gt (hN n hn))
  exact ⟨x, hx.1, hx.2⟩

/-- The exact missing local odd-return supplier can be derived
from just the two independently named measure hypotheses.
This conclusion is UNCONDITIONAL given hMix and hSupport,
not an unconditional assertion of either premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `466495b9fb8ffb9c3c55e84c9b73389c69b3531b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
