# thetaGaussianFromThree_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e40f4873-70f7-634b-8948-7f01565256d7",
  "kind": "theorem",
  "lexical_name": "thetaGaussianFromThree_summable",
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
  "slug": "thetagaussianfromthree-summable--b2e6c719ece08f25b19d8437",
  "source": {
    "blob": "150dc3cec457277502f6cf48c954d69cfa0d068c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 90,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2e6c719ece08f25b19d84377e7ea8787466e687e31cf28fb696739df37310bc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e40f4873-70f7-634b-8948-7f01565256d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianFromThree_summable {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 12) :
    Summable (fun m : ℕ => ((m : ℝ) + 3) ^ p *
      Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  change Summable (gaussianFromThree A p)
  apply ((summable_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left (gaussianFromThree A p 0)).of_nonneg_of_le
  · intro m
    unfold gaussianFromThree
    positivity
  · exact gaussianFromThree_geometric hA p hp

/-- The entire shifted Gaussian remainder is at most twice its first term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150dc3cec457277502f6cf48c954d69cfa0d068c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
