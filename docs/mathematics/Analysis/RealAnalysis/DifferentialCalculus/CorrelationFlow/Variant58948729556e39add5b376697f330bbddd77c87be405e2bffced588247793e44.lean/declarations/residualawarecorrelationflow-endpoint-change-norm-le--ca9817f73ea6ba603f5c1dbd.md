# ResidualAwareCorrelationFlow.endpoint_change_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:888855e9-8915-5928-e1aa-ea4dfa7f4890",
  "kind": "theorem",
  "lexical_name": "ResidualAwareCorrelationFlow.endpoint_change_norm_le",
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
  "slug": "residualawarecorrelationflow-endpoint-change-norm-le--ca9817f73ea6ba603f5c1dbd",
  "source": {
    "blob": "6f72744b754f359171a8e33954b3c731b8d883c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca9817f73ea6ba603f5c1dbd67e87ade9e0495107f0609d98209b696ef1968c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:888855e9-8915-5928-e1aa-ea4dfa7f4890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidualAwareCorrelationFlow.endpoint_change_norm_le
    (flow : ResidualAwareCorrelationFlow (Left := Left) (Right := Right))
    {budget : ℝ} (hbudget : FullSignedDefectBudget flow budget) (x : ℕ) :
    ‖flow.fullSignedCorrelation flow.finalTime x -
        flow.fullSignedCorrelation 0 x‖ ≤ budget * flow.finalTime := by
  have hbound := norm_image_sub_le_of_norm_deriv_le_segment'
    (a := (0 : ℝ)) (b := flow.finalTime)
    (f := fun t ↦ flow.fullSignedCorrelation t x)
    (f' := fun t ↦ flow.fullSignedDerivative t x)
    (C := budget)
    (fun t _ ↦ (fullSignedCorrelation_derivative flow t x).hasDerivWithinAt)
    (fun t ht ↦ hbudget.2 t x ht.1 (le_of_lt ht.2))
    flow.finalTime
    ⟨le_of_lt flow.finalTime_pos, le_rfl⟩
  simpa using hbound

/-- A global defect estimate is an independent analytic obligation.  It is
not bundled into `CorrelationCompatibleFlow`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f72744b754f359171a8e33954b3c731b8d883c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
