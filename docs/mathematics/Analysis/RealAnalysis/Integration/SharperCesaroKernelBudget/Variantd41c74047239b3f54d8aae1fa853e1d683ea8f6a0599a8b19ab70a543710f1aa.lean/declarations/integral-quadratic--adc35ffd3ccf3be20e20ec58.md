# integral_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e68e78d-e798-c0af-3ae4-2560e152299c",
  "kind": "theorem",
  "lexical_name": "integral_quadratic",
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
  "slug": "integral-quadratic--adc35ffd3ccf3be20e20ec58",
  "source": {
    "blob": "930869bd4577b8d63d0b2d796c4b33b584f4ff24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adc35ffd3ccf3be20e20ec585ae3b4bd91c6fceedbe32e7810f39d717bf0fccf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e68e78d-e798-c0af-3ae4-2560e152299c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_quadratic (a b p q : ℝ) :
    (∫ t in a..b, t * (p * t + q)) =
      p / 3 * (b ^ 3 - a ^ 3) + q / 2 * (b ^ 2 - a ^ 2) := by
  have hd (t : ℝ) : HasDerivAt
      (fun u : ℝ => p / 3 * u ^ 3 + q / 2 * u ^ 2) (t * (p * t + q)) t := by
    exact ((((hasDerivAt_id t).pow 3).const_mul (p / 3)).add
      (((hasDerivAt_id t).pow 2).const_mul (q / 2))).congr_deriv
      (by dsimp only [id_eq]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => t * (p * t + q))).intervalIntegrable a b)
  linarith

/-- The exact upper-distance budget improves the main constant to twenty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `930869bd4577b8d63d0b2d796c4b33b584f4ff24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
