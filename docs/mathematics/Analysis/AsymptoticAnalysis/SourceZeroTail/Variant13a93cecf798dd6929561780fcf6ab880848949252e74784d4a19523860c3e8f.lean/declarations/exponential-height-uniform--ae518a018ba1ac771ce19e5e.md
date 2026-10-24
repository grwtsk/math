# exponential_height_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d7f180e-b739-6420-c28a-3dde922e15d5",
  "kind": "theorem",
  "lexical_name": "exponential_height_uniform",
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
  "slug": "exponential-height-uniform--ae518a018ba1ac771ce19e5e",
  "source": {
    "blob": "e99e6f0e823d4727d27c5fe9cb591031001ee621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 486,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae518a018ba1ac771ce19e5ee30984bf4d96ebad45faded8a17ed57a285756c8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d7f180e-b739-6420-c28a-3dde922e15d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_height_uniform (R : ℝ) (hR : 1 ≤ R) (A : ℝ) (hRA : R ≤ A) :
    tailError A (Real.exp A) ≤ tailConstant * R ^ (-9 : ℝ) :=
  (exponential_height_bound A (hR.trans hRA)).trans
    (mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow_of_nonpos (by linarith) hRA (by norm_num)) tailConstant_nonneg)

/-- The actual error along exp(A) tends to zero as real A grows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Variant13a93cecf798dd6929561780fcf6ab880848949252e74784d4a19523860c3e8f.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e99e6f0e823d4727d27c5fe9cb591031001ee621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
