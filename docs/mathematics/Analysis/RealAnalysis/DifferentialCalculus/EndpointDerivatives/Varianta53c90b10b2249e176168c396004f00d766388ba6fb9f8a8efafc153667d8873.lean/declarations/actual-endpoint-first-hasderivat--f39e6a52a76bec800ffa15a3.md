# actual_endpoint_first_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:962172a6-17ba-7bfc-1654-2a3e55e6703f",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_first_hasDerivAt",
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
  "slug": "actual-endpoint-first-hasderivat--f39e6a52a76bec800ffa15a3",
  "source": {
    "blob": "27281d2d834a7c968d56107092d5dcbdcb875adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f39e6a52a76bec800ffa15a3265577860bc06327e23cb071c530a9d053d7a642",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:962172a6-17ba-7bfc-1654-2a3e55e6703f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_first_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : u∈Ioo (0:ℝ) (2*A)) :
    HasDerivAt (criticalPrimeTest A)
      (Real.exp (u/2)*endpointFullSlope A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hd := (endpoint_full_hasDerivAt A⁻¹ (2*A-u)).comp u
    ((hasDerivAt_const u (2*A)).sub (hasDerivAt_id u))
  have hh := (he.mul hd).div_const (A^9*sourceNormalization A)
  have hm : HasDerivAt
      (fun v : ℝ => Real.exp (v/2)*endpointFullPolynomial A⁻¹ (2*A-v)/(A^9*sourceNormalization A))
      (Real.exp (u/2)*endpointFullSlope A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
    convert hh using 1 <;> first | rfl | (dsimp [endpointFullSlope]; ring)
  exact hm.congr_of_eventuallyEq (actual_endpoint_model_eventuallyEq hA hu)

/-- Exact actual g'' formula on the same open interval, not a seam assumption for D. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Varianta53c90b10b2249e176168c396004f00d766388ba6fb9f8a8efafc153667d8873.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27281d2d834a7c968d56107092d5dcbdcb875adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
