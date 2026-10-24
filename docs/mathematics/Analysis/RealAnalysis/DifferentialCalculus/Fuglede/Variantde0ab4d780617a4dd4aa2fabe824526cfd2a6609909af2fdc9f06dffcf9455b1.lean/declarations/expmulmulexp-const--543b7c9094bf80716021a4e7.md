# expMulMulExp_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76baa0be-5393-09eb-64ad-ebc313390ddb",
  "kind": "lemma",
  "lexical_name": "expMulMulExp_const",
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
  "slug": "expmulmulexp-const--543b7c9094bf80716021a4e7",
  "source": {
    "blob": "fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:543b7c9094bf80716021a4e7195c28b5b9250cb81729b55d91f7ad000e796862",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76baa0be-5393-09eb-64ad-ebc313390ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma expMulMulExp_const (h : SemiconjBy x a b) (z : ℂ) : expMulMulExp a b x z = x := by
  have hf : Differentiable ℂ (expMulMulExp a b x : ℂ → A) := by unfold expMulMulExp; fun_prop
  have : IsBounded (Set.range (expMulMulExp a b x)) := by
    apply Metric.isBounded_sphere (x := (0 : A)) (r := ‖x‖) |>.subset
    rintro - ⟨z, hz, rfl⟩
    rw [mem_sphere_iff_norm, sub_zero, expMulMulExp_eq_expUnitary_mul_mul_expUnitary h z,
      CStarRing.norm_mul_coe_unitary, CStarRing.norm_coe_unitary_mul]
  simpa [expMulMulExp] using hf.apply_eq_apply_of_bounded this z 0

/- This is not public because it is superseded by `SemiconjBy.star_right`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variantde0ab4d780617a4dd4aa2fabe824526cfd2a6609909af2fdc9f06dffcf9455b1.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1c8cc85608a37cd06ecb3ba0cb802aa95a44b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
