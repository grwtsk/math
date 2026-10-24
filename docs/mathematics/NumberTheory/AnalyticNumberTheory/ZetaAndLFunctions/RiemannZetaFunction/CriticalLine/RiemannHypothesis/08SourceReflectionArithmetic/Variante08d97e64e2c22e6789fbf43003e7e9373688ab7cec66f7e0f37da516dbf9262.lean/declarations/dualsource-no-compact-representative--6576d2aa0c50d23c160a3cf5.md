# dualSource_no_compact_representative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3750e06d30d6b7975949f585299e1c4f54258495",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0514d211-4fbf-8807-5ee6-1606e00164c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da7b2644-56b8-b8fd-ba69-59787ecde520",
  "kind": "theorem",
  "lexical_name": "dualSource_no_compact_representative",
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
  "slug": "dualsource-no-compact-representative--6576d2aa0c50d23c160a3cf5",
  "source": {
    "blob": "3750e06d30d6b7975949f585299e1c4f54258495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 494,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6576d2aa0c50d23c160a3cf5a0081108ca84f9d1526285b1eb656e3bf506216b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da7b2644-56b8-b8fd-ba69-59787ecde520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualSource_no_compact_representative (A : ℝ) (hA : 1 ≤ A) :
    ¬ ∃ g : ℝ → ℂ, HasCompactSupport g ∧
      (dualSourceL2 A (by linarith) : ℝ → ℂ) =ᵐ[volume] g :=
  SourceDualSupport.angular_dual_no_compact_representative A hA
    (sourceL2 A (by linarith)) (sourceL2_coe_ae A (by linarith))

/-- Literal real profiles have conjugation-fixed complex L² embeddings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variante08d97e64e2c22e6789fbf43003e7e9373688ab7cec66f7e0f37da516dbf9262.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3750e06d30d6b7975949f585299e1c4f54258495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
