# oddWork_eq_source_and_mixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c807eca7-fcac-0b35-d1ac-4ba8a40fac95",
  "kind": "theorem",
  "lexical_name": "oddWork_eq_source_and_mixed",
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
  "slug": "oddwork-eq-source-and-mixed--44a527709efc83fe5bc3218c",
  "source": {
    "blob": "321dcb8336952edf48ecdfa083eb0b74901d90cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant604999682216aa9b26dcd6880aa2005a2f229a3d57e63b25d76b42cd22740a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44a527709efc83fe5bc3218c9a7c0947b5bece10e1da52fd79eeecfdfe50b86a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant604999682216aa9b26dcd6880aa2005a2f229a3d57e63b25d76b42cd22740a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c807eca7-fcac-0b35-d1ac-4ba8a40fac95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddWork_eq_source_and_mixed (A : ℝ) (hA : 1 ≤ A) :
    oddWork A = (signedPairing explicitSecondDerivative A +
      primeTwoBoundary explicitSecondDerivative A / 2 - reflectedMixedWork A) / 2 := by
  have hs := actual_sector_integrability A hA
  have h := integral_product_eq_even_add_odd lowerEndpoint (2 * A)
    centeredError (sourceWeight explicitSecondDerivative A) hs.1 hs.2.1 hs.2.2.1 hs.2.2.2
  rw [centered_pairing_eq_source A hA] at h
  change _ = evenWork A + oddWork A at h
  rw [evenWork_eq_source_and_mixed A hA] at h
  linarith

/-- Joint reflection retains exactly the physical signed source and prime-two correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant604999682216aa9b26dcd6880aa2005a2f229a3d57e63b25d76b42cd22740a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant604999682216aa9b26dcd6880aa2005a2f229a3d57e63b25d76b42cd22740a97.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `321dcb8336952edf48ecdfa083eb0b74901d90cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
