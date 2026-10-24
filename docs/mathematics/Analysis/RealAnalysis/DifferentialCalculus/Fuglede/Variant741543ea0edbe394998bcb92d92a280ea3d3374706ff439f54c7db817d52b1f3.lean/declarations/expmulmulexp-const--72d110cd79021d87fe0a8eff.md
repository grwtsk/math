# expMulMulExp_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cef263280eedf310d800336a2ed6c38d8737594d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18e5fe45-09ff-4ae6-2a5e-8f8ce42a036e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5e48e91-5577-d616-b60d-4ad5b28f17c9",
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
  "slug": "expmulmulexp-const--72d110cd79021d87fe0a8eff",
  "source": {
    "blob": "cef263280eedf310d800336a2ed6c38d8737594d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72d110cd79021d87fe0a8eff9dfb71f9d1737d3428e514e0101d33c993b47dd8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5e48e91-5577-d616-b60d-4ad5b28f17c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fuglede/Variant741543ea0edbe394998bcb92d92a280ea3d3374706ff439f54c7db817d52b1f3.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef263280eedf310d800336a2ed6c38d8737594d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
