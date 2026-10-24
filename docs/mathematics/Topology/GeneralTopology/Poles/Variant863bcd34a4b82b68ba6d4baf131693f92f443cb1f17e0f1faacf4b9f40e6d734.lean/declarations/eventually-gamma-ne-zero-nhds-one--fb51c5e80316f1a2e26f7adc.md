# eventually_Gammaℝ_ne_zero_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a58a034-03cf-eeb0-7632-61a8620af2bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3723c694-f56a-2ba2-cb00-1b44298a1037",
  "kind": "lemma",
  "lexical_name": "eventually_Gammaℝ_ne_zero_nhds_one",
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
  "slug": "eventually-gamma-ne-zero-nhds-one--fb51c5e80316f1a2e26f7adc",
  "source": {
    "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb51c5e80316f1a2e26f7adc5dc859eb554a7d5f179a1e082df3101ab761ee1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3723c694-f56a-2ba2-cb00-1b44298a1037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_Gammaℝ_ne_zero_nhds_one : ∀ᶠ s in 𝓝 (1:ℂ), Gammaℝ s ≠ 0 := by
  have h1 : ∀ᶠ s in 𝓝 (1:ℂ), -2 < s.re :=
    (continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by
      simp only [Set.mem_preimage, Complex.one_re, Set.mem_Ioi]; norm_num)
  have h2 : ∀ᶠ s in 𝓝 (1:ℂ), s ≠ 0 := isOpen_ne.mem_nhds one_ne_zero
  filter_upwards [h1, h2] with s hs hs0
  exact Gammaℝ_ne_zero_of_re hs hs0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc5c5039aad733ad0afb8dda12029f6595dc25c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
