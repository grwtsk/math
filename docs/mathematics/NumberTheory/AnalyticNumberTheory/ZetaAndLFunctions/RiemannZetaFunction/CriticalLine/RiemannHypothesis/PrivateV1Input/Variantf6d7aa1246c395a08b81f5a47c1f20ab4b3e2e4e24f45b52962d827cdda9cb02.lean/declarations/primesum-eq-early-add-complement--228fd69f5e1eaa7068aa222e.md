# primeSum_eq_early_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8306ec2b1f77df61e2ac7b7c3508aac1cdccfa9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93972788-5e31-98da-e9e1-a572f68fc222",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d9a427f-9a71-2d09-bc45-a615ad2e288a",
  "kind": "theorem",
  "lexical_name": "primeSum_eq_early_add_complement",
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
  "slug": "primesum-eq-early-add-complement--228fd69f5e1eaa7068aa222e",
  "source": {
    "blob": "a8306ec2b1f77df61e2ac7b7c3508aac1cdccfa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:228fd69f5e1eaa7068aa222efe1c3a483862330c472cfd7f692abe7f1b4b4b4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9a427f-9a71-2d09-bc45-a615ad2e288a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSum_eq_early_add_complement {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2*A) (pairedTailTest A) = earlyPrimeBlock A + complementaryPrimeBlocks A := by
  have hz := primeLogSum_abel 0 (le_refl 0) (pairedTailTest A) (pairedTailTest_contDiff hA)
  simp only [primeLogPrefix_zero, mul_zero, intervalIntegral.integral_same, sub_zero] at hz
  unfold earlyPrimeBlock complementaryPrimeBlocks primeLogWindow
  rw [hz]
  ring

/-- Any true complete tail witness must repay this actual negative block and the full independent drift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8306ec2b1f77df61e2ac7b7c3508aac1cdccfa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
