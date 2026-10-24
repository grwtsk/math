# actual_endpoint_excursion_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8546278-bec0-ecaf-e085-c87f25591314",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_excursion_tendsto",
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
  "slug": "actual-endpoint-excursion-tendsto--5f2486e634e6c33d1c96c884",
  "source": {
    "blob": "bfa1d736b56581bc712f88e81e0237e690a7edd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2486e634e6c33d1c96c884e2b47b5bcf083203459e4d8c03c036beab58a7f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8546278-bec0-ecaf-e085-c87f25591314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_excursion_tendsto :
    Tendsto (fun A : ℝ => criticalPrimeTest A (2*A-1)) atTop atTop := by
  have hn := actual_endpoint_normalized_tendsto (y:=1) (by norm_num)
  have hpos : 0<endpointLeadingCorrelation 1/(4096/109395:ℝ) := by
    norm_num [endpointLeadingCorrelation]
  have he : Tendsto (fun A : ℝ => Real.exp (A-1/2)/A^9) atTop atTop := by
    have hh := (tendsto_exp_mul_div_rpow_atTop (9:ℝ) 1 (by norm_num)).const_mul_atTop
      (Real.exp_pos (-(1/2:ℝ)))
    simp only [one_mul, Real.rpow_ofNat] at hh
    convert hh using 1
    ext A
    rw [←mul_div_assoc,←Real.exp_add]
    congr 1
    ring
  have hh := hn.pos_mul_atTop hpos he
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
  unfold criticalPrimeTest
  have hne : A≠0 := by linarith
  field_simp [hne]

/-- Actual growing source variation, derived without arithmetic or zero information. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt07/Variant8baaeaea2cecf028367f8ebe16e999a479495a5b7e6dad2ad849b1ebe6b973eb.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa1d736b56581bc712f88e81e0237e690a7edd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
