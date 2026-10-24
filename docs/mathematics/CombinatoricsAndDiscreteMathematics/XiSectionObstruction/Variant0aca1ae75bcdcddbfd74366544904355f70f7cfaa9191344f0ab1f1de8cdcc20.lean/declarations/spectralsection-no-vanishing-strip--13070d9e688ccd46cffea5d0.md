# spectralSection_no_vanishing_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a699811712a961d51d202ad29ff4b298997bdc9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a70def4-b9b2-33e2-0518-037050d71e98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b35312ec-33fb-e4c2-d2f3-befc0016f3fe",
  "kind": "theorem",
  "lexical_name": "spectralSection_no_vanishing_strip",
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
  "slug": "spectralsection-no-vanishing-strip--13070d9e688ccd46cffea5d0",
  "source": {
    "blob": "a699811712a961d51d202ad29ff4b298997bdc9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13070d9e688ccd46cffea5d09687fff171bca8f81c8891df3a5661c073a7bbeb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b35312ec-33fb-e4c2-d2f3-befc0016f3fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralSection_no_vanishing_strip (δ : ℕ → ℝ)
    (hδ : Tendsto δ atTop (𝓝 0)) :
    ¬ ∀ᶠ n in atTop, ∀ z : ℂ, spectralSection n z = 0 → z.im ^ 2 ≤ δ n := by
  intro h
  have hsmall : ∀ᶠ n in atTop, δ n < (1 : ℝ) / 10 :=
    hδ.eventually (eventually_lt_nhds (by norm_num))
  obtain ⟨N, hN⟩ := eventually_atTop.mp (h.and hsmall)
  obtain ⟨n, hn, _, z, hz, him⟩ := spectralSection_zeros_away_frequently N
  exact (hN n hn).2.not_ge (him.le.trans ((hN n hn).1 z hz))

end
end FormalResearch.RiemannHypothesis.XiSectionObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a699811712a961d51d202ad29ff4b298997bdc9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
