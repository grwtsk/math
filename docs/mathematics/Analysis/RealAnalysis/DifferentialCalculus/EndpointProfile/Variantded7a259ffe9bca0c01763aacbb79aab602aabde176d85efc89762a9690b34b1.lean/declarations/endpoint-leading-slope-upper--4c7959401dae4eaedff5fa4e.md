# endpoint_leading_slope_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11a49ea2-b133-d18b-b315-ddfc9122820d",
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
  "slug": "endpoint-leading-slope-upper--4c7959401dae4eaedff5fa4e",
  "source": {
    "blob": "1207a673823f68faa3c2557b45f9795c3be44f04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c7959401dae4eaedff5fa4e7d223ee76ec54c9e44d95a9034bb763751b65146",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a49ea2-b133-d18b-b315-ddfc9122820d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–112.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfile/Variantded7a259ffe9bca0c01763aacbb79aab602aabde176d85efc89762a9690b34b1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1207a673823f68faa3c2557b45f9795c3be44f04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
