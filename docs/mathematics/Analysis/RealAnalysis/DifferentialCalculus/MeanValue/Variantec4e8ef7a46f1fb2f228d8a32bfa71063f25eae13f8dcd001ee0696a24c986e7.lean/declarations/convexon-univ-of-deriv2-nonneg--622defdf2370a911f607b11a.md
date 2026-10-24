# convexOn_univ_of_deriv2_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea9c3267-772a-11a0-ff67-b3f4e343568e",
  "kind": "theorem",
  "lexical_name": "convexOn_univ_of_deriv2_nonneg",
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
  "slug": "convexon-univ-of-deriv2-nonneg--622defdf2370a911f607b11a",
  "source": {
    "blob": "23748d698d5120ae6e95cba06a05b0e96fef0331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1267,
    "line": 1259,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantec4e8ef7a46f1fb2f228d8a32bfa71063f25eae13f8dcd001ee0696a24c986e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:622defdf2370a911f607b11a3100fda76c87d5a1827214d50c325f683a4c8baa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantec4e8ef7a46f1fb2f228d8a32bfa71063f25eae13f8dcd001ee0696a24c986e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9c3267-772a-11a0-ff67-b3f4e343568e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1259–1267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_univ_of_deriv2_nonneg {f : ℝ → ℝ} (hf' : Differentiable ℝ f)
    (hf'' : Differentiable ℝ (deriv f)) (hf''_nonneg : ∀ x, 0 ≤ (deriv^[2] f) x) :
    ConvexOn ℝ univ f :=
  convexOn_of_deriv2_nonneg' convex_univ hf'.differentiableOn hf''.differentiableOn fun x _ =>
    hf''_nonneg x
#align convex_on_univ_of_deriv2_nonneg convexOn_univ_of_deriv2_nonneg

/-- If a function `f` is twice differentiable on `ℝ`, and `f''` is nonpositive on `ℝ`,
then `f` is concave on `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantec4e8ef7a46f1fb2f228d8a32bfa71063f25eae13f8dcd001ee0696a24c986e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variantec4e8ef7a46f1fb2f228d8a32bfa71063f25eae13f8dcd001ee0696a24c986e7.lean#L1259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23748d698d5120ae6e95cba06a05b0e96fef0331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
