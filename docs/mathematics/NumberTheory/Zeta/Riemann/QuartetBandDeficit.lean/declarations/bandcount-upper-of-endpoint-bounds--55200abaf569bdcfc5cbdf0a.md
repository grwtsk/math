# bandCount_upper_of_endpoint_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42b43992-0850-2592-c663-22a49f6ebd1b",
  "kind": "theorem",
  "lexical_name": "bandCount_upper_of_endpoint_bounds",
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
  "slug": "bandcount-upper-of-endpoint-bounds--55200abaf569bdcfc5cbdf0a",
  "source": {
    "blob": "d2ca8b344529aa6398e414541ca2243059bfcb4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55200abaf569bdcfc5cbdf0aec7e3ea6e7d6157db659b6aa49e3636ac376ce82",
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

Occurrence: `result:42b43992-0850-2592-c663-22a49f6ebd1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bandCount_upper_of_endpoint_bounds (lower upper : ℝ) (ordered : lower ≤ upper)
    (lowerCount upperCount allowance : ℕ)
    (lowLower : lowerCount ≤ heightCount lower)
    (highUpper : heightCount upper ≤ upperCount)
    (budget : upperCount ≤ lowerCount + allowance) : bandCount lower upper ≤ allowance := by
  have partition := heightCount_partition lower upper ordered
  omega

/-- Positive band height is proved locally, not assumed for all zeta zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuartetBandDeficit.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2ca8b344529aa6398e414541ca2243059bfcb4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
