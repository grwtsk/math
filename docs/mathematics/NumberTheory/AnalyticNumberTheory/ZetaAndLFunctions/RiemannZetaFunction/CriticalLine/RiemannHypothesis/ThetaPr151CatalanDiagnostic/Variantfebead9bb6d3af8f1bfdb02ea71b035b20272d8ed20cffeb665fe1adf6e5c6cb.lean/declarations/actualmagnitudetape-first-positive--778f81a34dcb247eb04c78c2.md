# actualMagnitudeTape_first_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b8f93fe7dc58e7a5541ded122e85f0c0e02f986",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/febead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bc3cb93-27df-f717-df43-0d268d47c962",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f170cb03-734c-4ae9-1314-d79085ba17f0",
  "kind": "theorem",
  "lexical_name": "actualMagnitudeTape_first_positive",
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
  "slug": "actualmagnitudetape-first-positive--778f81a34dcb247eb04c78c2",
  "source": {
    "blob": "5b8f93fe7dc58e7a5541ded122e85f0c0e02f986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantfebead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:778f81a34dcb247eb04c78c2698bbdba15ebec1d34dd69a7e10f81ef86a9d0cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantfebead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f170cb03-734c-4ae9-1314-d79085ba17f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMagnitudeTape_first_positive {L N : ℕ} (hL : 0 < L) (hN : 0 < N)
    (t : ℝ) : 0 < actualMagnitudeTape L N t 1 := by
  unfold actualMagnitudeTape
  simp only [pow_one]
  apply Finset.sum_pos
  · intro l _
    apply mul_pos (thetaPhiBaseMomentMagnitude_pos hN t l.val)
    unfold thetaPhiSignedMomentNode
    positivity
  · exact ⟨⟨0, hL⟩, Finset.mem_univ _⟩

/-- Even rescaling the canonical free cyclic vector cannot produce the
actual positive PR151 magnitude tape: its first moment remains zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantfebead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPr151CatalanDiagnostic/Variantfebead9bb6d3af8f1bfdb02ea71b035b20272d8ed20cffeb665fe1adf6e5c6cb.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b8f93fe7dc58e7a5541ded122e85f0c0e02f986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
