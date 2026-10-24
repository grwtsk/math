# deriv_normalizedOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8644caca20b23c94b645c755e9f8eef00a8dc278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b61a7ae-9f71-6c95-7d30-bc7e608dd2cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6aee6e46-8186-1ae3-b16f-1d7fefdef95d",
  "kind": "theorem",
  "lexical_name": "deriv_normalizedOperator",
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
  "slug": "deriv-normalizedoperator--03ca459ade977ad6bb1fa088",
  "source": {
    "blob": "8644caca20b23c94b645c755e9f8eef00a8dc278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ca459ade977ad6bb1fa088ae09378b8fb27a2c500fa62a56199f1f3115a0b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aee6e46-8186-1ae3-b16f-1d7fefdef95d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_normalizedOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 3 h) (A x : ℝ) :
    deriv (normalizedOperator h A) x =
      (A⁻¹ * dilationOperator (deriv h) A x) / Real.sqrt (normalization h A) := by
  unfold normalizedOperator
  rw [deriv_div_const, deriv_dilationOperator hc]

/-- The squared spatial derivative is integrable at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyDerivativeEnergy/Variantcfac5622e3f4c0abd9ae232afcb818c9128b489147aebc9de266c81e8e7ab23e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8644caca20b23c94b645c755e9f8eef00a8dc278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
