# actualPsiFloorDensity_lower_ae_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:022d5958-e2e0-0d49-e155-0c7425fd198a",
  "kind": "theorem",
  "lexical_name": "actualPsiFloorDensity_lower_ae_zero",
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
  "slug": "actualpsifloordensity-lower-ae-zero--554d46ce0f669d5fdc65b5cb",
  "source": {
    "blob": "e15b17dd28f9495d2f65f666292f9a3729d1444d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Variantd1bc82711c4b87e76307cfd427822df0623cfe70be6dc4910c833f9aaa5be87a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554d46ce0f669d5fdc65b5cbad94638ad66bc5bca42590dc1ae7a52a6152e4f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Variantd1bc82711c4b87e76307cfd427822df0623cfe70be6dc4910c833f9aaa5be87a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:022d5958-e2e0-0d49-e155-0c7425fd198a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualPsiFloorDensity_lower_ae_zero (A : ℝ) :
    actualPsiFloorDensity A =ᵐ[volume.restrict (Ioc (0 : ℝ) 1)] 0 := by
  filter_upwards [ae_restrict_mem measurableSet_Ioc,
    (volume.restrict (Ioc (0 : ℝ) 1)).ae_ne (1 : ℝ)] with x hx hne
  exact actualPsiFloorDensity_zero_below_one A x (lt_of_le_of_ne hx.2 hne)

/-- Original signed Abel L1 transports through the true natural-floor equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Variantd1bc82711c4b87e76307cfd427822df0623cfe70be6dc4910c833f9aaa5be87a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiIntegerExact/Variantd1bc82711c4b87e76307cfd427822df0623cfe70be6dc4910c833f9aaa5be87a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15b17dd28f9495d2f65f666292f9a3729d1444d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
