# UniformIntegrable.uniformIntegrable_of_ae_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 985,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c7e9b30-2e82-739b-aaee-0b1f9db16a8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ffcc230-578a-8b3e-7c71-d4c48b217afe",
  "kind": "lemma",
  "lexical_name": "UniformIntegrable.uniformIntegrable_of_ae_tendsto",
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
  "slug": "uniformintegrable-uniformintegrable-of-ae-tendsto--f50b50a95e33f364d0bbf74e",
  "source": {
    "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 997,
    "line": 985,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50b50a95e33f364d0bbf74eee5c1aade17f2e643e69fca8edd7c2aaad2f64ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ffcc230-578a-8b3e-7c71-d4c48b217afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 985–997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniformIntegrable.uniformIntegrable_of_ae_tendsto {κ : Type*} (u : Filter κ) [NeBot u]
    [IsCountablyGenerated u] {fn : ι → α → β}
    (hUI : UniformIntegrable fn p μ) :
    UniformIntegrable (fun (f : {g : α → β | ∃ ni : κ → ι,
      ∀ᵐ (x : α) ∂μ, Tendsto (fun n ↦ fn (ni n) x) u (𝓝 (g x))}) ↦ f.1) p μ := by
  refine ⟨hUI.1.unifIntegrable_of_ae_tendsto u (fun i => hUI.aestronglyMeasurable i), ?_⟩
  obtain ⟨C, hC⟩ := hUI.2
  exact ⟨C, fun ⟨f, s, hs⟩ => Lp.eLpNorm_le_of_ae_tendsto
    (Eventually.of_forall fun n => hC (s n)) (fun n => hUI.aestronglyMeasurable (s n))
    (aestronglyMeasurable_of_tendsto_ae u (fun n => hUI.aestronglyMeasurable (s n)) hs) hs⟩

/-- Suppose `f` is a sequence of functions that converges a.e. to `g`. If `f` is
`UniformIntegrable`, then `g` is in `Lp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean#L985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fad813cfaa2d00abe57bfca784cc2b341f1b04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
