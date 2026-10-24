# exact_ratio_upper_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b80c85ca-8e2b-db11-2f16-3f6f5b4c8e4d",
  "kind": "theorem",
  "lexical_name": "exact_ratio_upper_five",
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
  "slug": "exact-ratio-upper-five--62b2d9b1077455efa368bd48",
  "source": {
    "blob": "f3a0c13abdf94f066367458841bcf76a36b32fac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant58129cf0a585e05aa60c014f9476efe591f7d01b215521762b90a4bd5c97ab5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b2d9b1077455efa368bd48d767fbd72402d5f9f4eb8b443d37cf9abc634932",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant58129cf0a585e05aa60c014f9476efe591f7d01b215521762b90a4bd5c97ab5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b80c85ca-8e2b-db11-2f16-3f6f5b4c8e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_ratio_upper_five {r : ℝ} (hr0 : 0 ≤ r) (hr : r ≤ 1 / 40000) :
    derivativePolynomial r / normPolynomial r ≤ 5 := by
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  exact derivativePolynomial_le_five_normPolynomial hr0 hr

/-- The actual normalized source has derivative energy at most five at native large scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant58129cf0a585e05aa60c014f9476efe591f7d01b215521762b90a4bd5c97ab5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7d693de4554d8c2c9e15e12ca0d27c8437a4fd708ac3e6d1bbe1f32b3a77e422SourceCorrelatio/Variant58129cf0a585e05aa60c014f9476efe591f7d01b215521762b90a4bd5c97ab5c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a0c13abdf94f066367458841bcf76a36b32fac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
