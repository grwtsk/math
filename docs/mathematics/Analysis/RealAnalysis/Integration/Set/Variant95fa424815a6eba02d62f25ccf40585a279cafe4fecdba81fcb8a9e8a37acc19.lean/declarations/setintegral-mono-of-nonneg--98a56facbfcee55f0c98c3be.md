# setIntegral_mono_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c36943d4-7d68-0fc3-cf48-a327134677f0",
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
  "slug": "setintegral-mono-of-nonneg--98a56facbfcee55f0c98c3be",
  "source": {
    "blob": "8afac6bc0a4af13c191249d1cdc05f5b21f607d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 917,
    "line": 895,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98a56facbfcee55f0c98c3beddb65cdcf04d77cacc0f352afc866d6200eee5f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c36943d4-7d68-0fc3-cf48-a327134677f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–917.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant95fa424815a6eba02d62f25ccf40585a279cafe4fecdba81fcb8a9e8a37acc19.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afac6bc0a4af13c191249d1cdc05f5b21f607d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
