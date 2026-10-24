# exists_goodHeightL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be2de34516f6248636513b16bb9571ab47c39d3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97c79c0e-2dfe-8cc1-b0c6-c73cee5ed87e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53f2ab47-bc3f-316d-b26f-d8070866353b",
  "kind": "lemma",
  "lexical_name": "exists_goodHeightL",
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
  "slug": "exists-goodheightl--8990d5df19a6f7a8eaccb349",
  "source": {
    "blob": "be2de34516f6248636513b16bb9571ab47c39d3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8990d5df19a6f7a8eaccb349f8418754ed0cf91dd3ea4603881fa1c53f7d4e47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f2ab47-bc3f-316d-b26f-d8070866353b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_goodHeightL (hq : 1 < q) (hprim : χ.IsPrimitive) (a : ℝ) :
    ∃ T ∈ Set.Icc a (a + 1), GoodHeightL χ T := by
  have hs : LSeam χ := LSeam_of hq hprim
  have hfin : (zerosInL χ (a - 1) (a + 2)).Finite := by
    have := (LZeros hs).window_finite (a - 1) (a + 2)
    refine this.subset ?_
    rintro ρ ⟨hρ, h1, h2⟩
    exact ⟨by rwa [LZeros_carrier], h1, h2⟩
  have hSfin : ((fun ρ : ℂ => ρ.im) '' zerosInL χ (a - 1) (a + 2)).Finite := hfin.image _
  have hinf : (Set.Icc a (a + 1)).Infinite := Set.Icc_infinite (by linarith)
  obtain ⟨T, hTd⟩ := (hinf.sdiff hSfin).nonempty
  obtain ⟨hT, hTnot⟩ := hTd
  refine ⟨T, hT, fun ρ hρ him => hTnot ?_⟩
  refine ⟨ρ, ⟨hρ, ?_, ?_⟩, him⟩
  · rw [him]; linarith [hT.1]
  · rw [him]; linarith [hT.2]

/-! ### the split along the half-contour -/

/-- L(σ + iT) ≠ 0 on the horizontal segment [1/2, 2] at a zero-free ordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantd9b11971ad2117fc008b7a4eb76c66ad5cc3c1ad5930690b0e55fc412f2f672d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be2de34516f6248636513b16bb9571ab47c39d3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
