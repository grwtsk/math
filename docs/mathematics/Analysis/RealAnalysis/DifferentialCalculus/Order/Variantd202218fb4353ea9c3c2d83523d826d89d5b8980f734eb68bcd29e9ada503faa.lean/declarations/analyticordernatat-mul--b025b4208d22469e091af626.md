# analyticOrderNatAt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46d7927b-bef9-bae1-f79a-2329230bfaac",
  "kind": "theorem",
  "lexical_name": "analyticOrderNatAt_mul",
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
  "slug": "analyticordernatat-mul--b025b4208d22469e091af626",
  "source": {
    "blob": "91c0435f282bf65f8d121392325982d509863ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 522,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b025b4208d22469e091af6266033287db4ed890cbad88ccdeab4eedff6356a0d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46d7927b-bef9-bae1-f79a-2329230bfaac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOrderNatAt_mul (hf : AnalyticAt 𝕜 f z₀) (hg : AnalyticAt 𝕜 g z₀)
    (hf' : analyticOrderAt f z₀ ≠ ⊤) (hg' : analyticOrderAt g z₀ ≠ ⊤) :
    analyticOrderNatAt (f * g) z₀ = analyticOrderNatAt f z₀ + analyticOrderNatAt g z₀ := by
  simp [analyticOrderNatAt, analyticOrderAt_mul, ENat.toNat_add, *]

/-- The order multiplies by `n` when taking an analytic function to its `n`th power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c0435f282bf65f8d121392325982d509863ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
