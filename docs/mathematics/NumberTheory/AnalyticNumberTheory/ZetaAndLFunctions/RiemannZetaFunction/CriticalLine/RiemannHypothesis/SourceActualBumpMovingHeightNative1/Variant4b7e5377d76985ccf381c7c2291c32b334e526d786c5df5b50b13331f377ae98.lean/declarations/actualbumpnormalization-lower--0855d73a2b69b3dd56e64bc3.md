# actualBumpNormalization_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28a7c6ee-c821-ecc1-b201-641890fdab5e",
  "kind": "theorem",
  "lexical_name": "actualBumpNormalization_lower",
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
  "slug": "actualbumpnormalization-lower--0855d73a2b69b3dd56e64bc3",
  "source": {
    "blob": "7cfe1e19cc052c450e3bcf398564ae0191db7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0855d73a2b69b3dd56e64bc36f456eb4a652be6728df97e03e978b8d039f16eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28a7c6ee-c821-ecc1-b201-641890fdab5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBumpNormalization_lower (A : ℝ) (hA : 1 ≤ A) :
    (4096 / 109395 : ℝ) ≤ sourceNormalization A := by
  have hp : 0 < A := by linarith
  have h1 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h2 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  unfold sourceNormalization
  norm_num
  linarith

/-- The independently stated tail constant uses the full actual Mangoldt Dirichlet mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cfe1e19cc052c450e3bcf398564ae0191db7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
