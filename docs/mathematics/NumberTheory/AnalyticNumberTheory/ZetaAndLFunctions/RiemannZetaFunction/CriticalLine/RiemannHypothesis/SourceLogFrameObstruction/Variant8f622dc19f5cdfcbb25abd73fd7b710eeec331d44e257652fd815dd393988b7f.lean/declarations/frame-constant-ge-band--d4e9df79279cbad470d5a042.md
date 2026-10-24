# frame_constant_ge_band

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a8a50709057413b5ee7c83f33386ed4589af377",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:638eb33b-4e63-7e86-3c60-9b513e1bb0b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88438353-7360-6c29-fb54-de4e9c7277ba",
  "kind": "theorem",
  "lexical_name": "frame_constant_ge_band",
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
  "slug": "frame-constant-ge-band--d4e9df79279cbad470d5a042",
  "source": {
    "blob": "7a8a50709057413b5ee7c83f33386ed4589af377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e9df79279cbad470d5a04252003c899ff2c976a84a576c8a2a166ea8d070ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88438353-7360-6c29-fb54-de4e9c7277ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_constant_ge_band {A B : ℝ} (hA : 1 ≤ A) (I : Finset ℕ)
    (hpos : ∀ n ∈ I, 0 < n)
    (hband : ∀ n ∈ I, |Real.log (n : ℝ) - A| ≤ A / 20)
    (hframe : (∑ n ∈ I,
      (sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ) - A)) ^ 2 /
        (n : ℝ)) ≤ B) :
    (9 / 16 : ℝ) * (∑ n ∈ I, (1 : ℝ) / (n : ℝ)) ≤ B :=
  (valueFrame_band_lower hA I hpos hband).trans hframe

end
end FormalResearch.RiemannHypothesis.SourceLogFrameObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8a50709057413b5ee7c83f33386ed4589af377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
