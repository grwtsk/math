# DifferentiableAt.iteratedFDeriv_succ_apply_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8e6cd73-e50f-2eaf-5a94-cf294f00aacf",
  "kind": "theorem",
  "lexical_name": "DifferentiableAt.iteratedFDeriv_succ_apply_left'",
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
  "slug": "differentiableat-iteratedfderiv-succ-apply-left--5d3cedf9d88b4b3933565d50",
  "source": {
    "blob": "945cbc93169a584f61c295a4b15bac091ce62a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 843,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantd4e48f7a88b3dc3ef2c45f720232120f916982b758b0ffe84316635bdc54df63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d3cedf9d88b4b3933565d50297c5ff5afab34b97eefce7b842af2d9bc24d56e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantd4e48f7a88b3dc3ef2c45f720232120f916982b758b0ffe84316635bdc54df63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e6cd73-e50f-2eaf-5a94-cf294f00aacf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 843–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DifferentiableAt.iteratedFDeriv_succ_apply_left' {n : ℕ} {m : Fin (n + 1) → E}
    (hf : DifferentiableAt 𝕜 (iteratedFDeriv 𝕜 n f) x) :
    iteratedFDeriv 𝕜 (n + 1) f x m =
    fderiv 𝕜 (fun y ↦ iteratedFDeriv 𝕜 n f y (Fin.tail m)) x (m 0) := by
  convert iteratedFDeriv_succ_apply_left m
  simp [fderiv_continuousMultilinear_apply_const hf]

/-- Writing explicitly the `n+1`-th derivative as the composition of a currying linear equiv,
and the derivative of the `n`-th derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantd4e48f7a88b3dc3ef2c45f720232120f916982b758b0ffe84316635bdc54df63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantd4e48f7a88b3dc3ef2c45f720232120f916982b758b0ffe84316635bdc54df63.lean#L843).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945cbc93169a584f61c295a4b15bac091ce62a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
