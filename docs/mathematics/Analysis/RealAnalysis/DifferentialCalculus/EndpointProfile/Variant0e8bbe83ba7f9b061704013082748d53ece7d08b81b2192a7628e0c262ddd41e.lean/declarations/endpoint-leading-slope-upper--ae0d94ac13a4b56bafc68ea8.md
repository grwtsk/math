# endpoint_leading_slope_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6d9728d-ef03-c818-80f1-97ae3ba83607",
  "kind": "theorem",
  "lexical_name": "endpoint_leading_slope_upper",
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
  "slug": "endpoint-leading-slope-upper--ae0d94ac13a4b56bafc68ea8",
  "source": {
    "blob": "e3be4ad673032b66791a74f2390b528e644d9353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae0d94ac13a4b56bafc68ea8081ae88f48bae7bf828ea772b4830db4e730d7a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d9728d-ef03-c818-80f1-97ae3ba83607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_leading_slope_upper {y : ℝ} (hy : y∈Icc (0:ℝ) 1) :
    endpointLeadingSlope y≤-5000*y^4 := by
  have hpow (k : ℕ) : 0≤y^k ∧ y^k≤1 := ⟨pow_nonneg hy.1 k,pow_le_one₀ hy.1 hy.2⟩
  have hb : y^5-18*y^4-576*y^3+8064*y^2+48384*y-483840≤-393750 := by
    nlinarith [(hpow 5).2,(hpow 4).1,(hpow 3).1,(hpow 2).2]
  have hh := mul_le_mul_of_nonneg_left hb (show 0≤(4/315:ℝ)*y^4 by positivity)
  dsimp [endpointLeadingSlope]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variant0e8bbe83ba7f9b061704013082748d53ece7d08b81b2192a7628e0c262ddd41e.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3be4ad673032b66791a74f2390b528e644d9353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
