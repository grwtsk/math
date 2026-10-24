# analyticAt_iff_analytic_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "037a4c2f9efa04971900c4536bea9a59fd6fe270",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e62f033-001a-d6c5-c70a-b22bb3b6b4dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44a2f722-9367-46c6-7b1a-d695ae062fb9",
  "kind": "theorem",
  "lexical_name": "analyticAt_iff_analytic_mul",
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
  "slug": "analyticat-iff-analytic-mul--035e034dfbe93e36583505f2",
  "source": {
    "blob": "037a4c2f9efa04971900c4536bea9a59fd6fe270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1119,
    "line": 1113,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:035e034dfbe93e36583505f2ea53ea17ae999dac5a88658a7fe7df4c2630b264",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44a2f722-9367-46c6-7b1a-d695ae062fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticAt_iff_analytic_mul {f g : E → 𝕝} {z : E} (h₁f : AnalyticAt 𝕜 f z)
    (h₂f : f z ≠ 0) :
    AnalyticAt 𝕜 g z ↔ AnalyticAt 𝕜 (f * g) z := by
  simp_rw [← smul_eq_mul]
  exact analyticAt_iff_analytic_smul h₁f h₂f

/-- `f x / g x` is analytic away from `g x = 0` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Variantb4ebe935f31d1c4110a0889146b48909c63e30a9e2de771e9065fa472d7d1be6.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `037a4c2f9efa04971900c4536bea9a59fd6fe270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
