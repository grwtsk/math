# normalizedPrimitiveBump_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aeeb62e04f313412ad6e784a207617e947aee71c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88760557-eb0f-28c7-512c-1575355eb940",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc043f74-b507-f939-4f0e-0fe0cb7ed727",
  "kind": "theorem",
  "lexical_name": "normalizedPrimitiveBump_even",
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
  "slug": "normalizedprimitivebump-even--8ce8f5459d8ee3ecda264c60",
  "source": {
    "blob": "aeeb62e04f313412ad6e784a207617e947aee71c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ce8f5459d8ee3ecda264c6044b58cd280396b14feb0edd0af432ca0b2cff6f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc043f74-b507-f939-4f0e-0fe0cb7ed727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPrimitiveBump_even {A : ℝ} (hA : 0 < A) (x : ℝ) :
    normalizedPrimitiveBump A (-x) = normalizedPrimitiveBump A x := by
  rw [normalizedPrimitiveBump, normalizedPrimitiveBump, scaledBump_eq_indicator A hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> rintro ⟨h1,h2⟩ <;> constructor <;> linarith
  simp only [indicator_apply, hm]
  split_ifs
  · simp only [bumpInterior, neg_div]
    ring
  · rfl

/-- Oddness belongs to the actual ordinary derivative, including both seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeeb62e04f313412ad6e784a207617e947aee71c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
