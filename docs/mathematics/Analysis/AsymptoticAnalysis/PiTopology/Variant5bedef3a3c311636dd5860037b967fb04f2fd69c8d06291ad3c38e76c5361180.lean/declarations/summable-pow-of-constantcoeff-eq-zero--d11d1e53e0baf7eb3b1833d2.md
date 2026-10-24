# summable_pow_of_constantCoeff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae5d60c-8eec-9843-910d-4c31e803abe4",
  "kind": "theorem",
  "lexical_name": "summable_pow_of_constantCoeff_eq_zero",
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
  "slug": "summable-pow-of-constantcoeff-eq-zero--d11d1e53e0baf7eb3b1833d2",
  "source": {
    "blob": "9ed47f9528a50e06c606e90ac9cb906813bca790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 180,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d11d1e53e0baf7eb3b1833d2d78626802e3f701cc49ffdd0cd5ba2fa4d065b88",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae5d60c-8eec-9843-910d-4c31e803abe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_pow_of_constantCoeff_eq_zero {f : PowerSeries R} (h : f.constantCoeff = 0) :
    Summable (f ^ ·) :=
  MvPowerSeries.WithPiTopology.summable_pow_of_constantCoeff_eq_zero h

section GeomSeries
variable {R : Type*} [TopologicalSpace R] [Ring R] [IsTopologicalRing R] [T2Space R]
variable {f : PowerSeries R}

/-- Formula for geometric series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed47f9528a50e06c606e90ac9cb906813bca790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
