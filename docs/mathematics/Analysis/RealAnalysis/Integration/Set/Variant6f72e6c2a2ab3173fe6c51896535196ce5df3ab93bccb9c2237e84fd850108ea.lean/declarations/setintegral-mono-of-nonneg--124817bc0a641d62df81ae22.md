# setIntegral_mono_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2f23b4ffdeaafa6c1e4faf7407788f785400da8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 887,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef1f71c9-75ae-b877-a5ef-020d7a27246c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6f143c8-94f8-23ea-1b1b-dcee7b6b4b95",
  "kind": "lemma",
  "lexical_name": "setIntegral_mono_of_nonneg",
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
  "slug": "setintegral-mono-of-nonneg--124817bc0a641d62df81ae22",
  "source": {
    "blob": "c2f23b4ffdeaafa6c1e4faf7407788f785400da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 887,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:124817bc0a641d62df81ae227a9573d69b68485f0f9c3412b8f5788e09362b80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6f143c8-94f8-23ea-1b1b-dcee7b6b4b95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 887–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_mono_of_nonneg {g : X → ℝ} (hf : ∀ x ∈ s, 0 ≤ f x)
    (h : ∀ x ∈ s, f x ≤ g x) (hg : IntegrableOn g s μ) :
    ∫ x in s, f x ∂μ ≤ ∫ x in s, g x ∂μ := by
  by_cases h'f : AEStronglyMeasurable f (μ.restrict s); swap
  · rw [integral_non_aestronglyMeasurable h'f]
    apply integral_nonneg_of_ae
    apply (ae_restrict_iff₀ ?_).2
    · filter_upwards with x hx using (hf x hx).trans (h x hx)
    · exact nullMeasurableSet_le aemeasurable_const hg.aemeasurable
  refine integral_mono_of_nonneg ?_ hg ?_
  · apply (ae_restrict_iff₀ ?_).2
    · filter_upwards with x hx using hf x hx
    · exact nullMeasurableSet_le aemeasurable_const h'f.aemeasurable
  · apply (ae_restrict_iff₀ ?_).2
    · filter_upwards with x hx using h x hx
    · exact nullMeasurableSet_le h'f.aemeasurable hg.aemeasurable

end Nonneg

section IntegrableUnion

variable {ι : Type*} [Countable ι] {μ : Measure X} [NormedAddCommGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant6f72e6c2a2ab3173fe6c51896535196ce5df3ab93bccb9c2237e84fd850108ea.lean#L887).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f23b4ffdeaafa6c1e4faf7407788f785400da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
