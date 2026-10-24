# rhThrough_of_endpoint_count_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7db4317-a80e-7e5e-a1ac-526ad8d593b2",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_endpoint_count_bounds",
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
  "slug": "rhthrough-of-endpoint-count-bounds--5c631d409bbb4c4618ea1a41",
  "source": {
    "blob": "d2ca8b344529aa6398e414541ca2243059bfcb4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 185,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c631d409bbb4c4618ea1a416ffa3cb2395c320f5a7b94845a9cec22005847bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7db4317-a80e-7e5e-a1ac-526ad8d593b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_endpoint_count_bounds (lower upper : ℕ) (ordered : lower ≤ upper)
    (baseline : RHThrough lower) (known : Finset ZeroPoint)
    (credit lowCount highCount allowance : ℕ)
    (knownSubset : known ⊆ bandHead (lower : ℝ) (upper : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (lowLower : lowCount ≤ heightCount (lower : ℝ))
    (highUpper : heightCount (upper : ℝ) ≤ highCount)
    (endpointBudget : highCount ≤ lowCount + allowance)
    (strict : allowance < credit + 4) : RHThrough upper := by
  apply rhThrough_of_band_credit lower upper ordered baseline known credit allowance
    knownSubset knownOnLine creditLower ?_ strict
  exact bandCount_upper_of_endpoint_bounds (lower : ℝ) (upper : ℝ)
    (by exact_mod_cast ordered) lowCount highCount allowance lowLower highUpper endpointBudget

/-- At zero imaginary height, the two involutions yield only two off-line points.
These are synthetic coordinates, not asserted zeta zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2ca8b344529aa6398e414541ca2243059bfcb4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
