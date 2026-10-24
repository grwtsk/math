# balancedFirstPrimeDensity_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eeff148-a0c9-6908-e4c6-d61f98688421",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrimeDensity_eq",
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
  "slug": "balancedfirstprimedensity-eq--2c4464fdec57d5ee386461c1",
  "source": {
    "blob": "5ea59110bd557f722c2c4626699819be2d9bb4d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c4464fdec57d5ee386461c15ba4ba800a9bb256abd66fca6a49f0bf03d3654a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eeff148-a0c9-6908-e4c6-d61f98688421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrimeDensity_eq (t : ℝ) :
    balancedFirstPrimeDensity t =
      Chebyshev.theta (Real.exp t) * Real.exp (-t / 2) - Real.exp (t / 2) + 1 := by
  have h1 : Real.exp t * Real.exp (-t / 2) = Real.exp (t / 2) := by
    rw [← Real.exp_add]; congr 1; ring
  have h2 : Real.exp (t / 2) * Real.exp (-t / 2) = 1 := by
    rw [← Real.exp_add, show t / 2 + -t / 2 = 0 by ring, Real.exp_zero]
  unfold balancedFirstPrimeDensity
  rw [add_mul, sub_mul, h1, h2]

/-- Finite closed steps prove integrability; total-integral conventions are not used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/05SourceBalancedFirstPrimePrimitive/Variantd802cdd0c427fab39b6a2cf3691de6d22dca72664acd4d385bc75cfc520387e9.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea59110bd557f722c2c4626699819be2d9bb4d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
