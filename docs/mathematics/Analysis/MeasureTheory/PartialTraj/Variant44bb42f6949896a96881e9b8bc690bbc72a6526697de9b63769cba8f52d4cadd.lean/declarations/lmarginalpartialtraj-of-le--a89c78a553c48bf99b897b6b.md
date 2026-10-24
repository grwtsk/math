# lmarginalPartialTraj_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a765da02-bc00-1913-7d14-28ca6a32e0ad",
  "kind": "theorem",
  "lexical_name": "lmarginalPartialTraj_of_le",
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
  "slug": "lmarginalpartialtraj-of-le--a89c78a553c48bf99b897b6b",
  "source": {
    "blob": "e4ee8f1d8ef16e1185f87af376704ea9a33fcd71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 399,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a89c78a553c48bf99b897b6b079f29cdcf094ba2815183545d2e100e4d154769",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a765da02-bc00-1913-7d14-28ca6a32e0ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lmarginalPartialTraj_of_le [∀ n, IsMarkovKernel (κ n)] (c : ℕ) {f : (Π n, X n) → ℝ≥0∞}
    (mf : Measurable f) (hf : DependsOn f (Iic a)) (hab : a ≤ b) :
    lmarginalPartialTraj κ b c f = f := by
  ext x
  rw [lmarginalPartialTraj_eq_lintegral_map mf]
  refine @lintegral_eq_const _ _ _ ?_ _ _ (ae_of_all _ fun y ↦ hf fun i hi ↦ ?_)
  · refine @IsMarkovKernel.isProbabilityMeasure _ _ _ _ _ ?_ _
    exact IsMarkovKernel.map _ (by fun_prop)
  · simp_all only [coe_Iic, Set.mem_Iic, Function.updateFinset, mem_Ioc, dite_eq_right_iff]
    lia

/-- If `f` only depends on the variables uo to rank `a`, integrating beyond rank `a` is the same
as integrating up to rank `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ee8f1d8ef16e1185f87af376704ea9a33fcd71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
