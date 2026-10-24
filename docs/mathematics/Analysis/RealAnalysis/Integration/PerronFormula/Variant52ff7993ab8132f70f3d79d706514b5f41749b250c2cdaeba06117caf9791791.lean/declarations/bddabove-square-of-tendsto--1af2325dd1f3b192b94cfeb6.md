# bddAbove_square_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 736,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f6fd21f-c7bb-dd3e-a4ea-a1c217377a59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84f79112-70f4-99d6-1ff7-2d4015e868d6",
  "kind": "lemma",
  "lexical_name": "bddAbove_square_of_tendsto",
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
  "slug": "bddabove-square-of-tendsto--1af2325dd1f3b192b94cfeb6",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 736,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af2325dd1f3b192b94cfeb6f41be2514d74311f565e675b4d612a1e9d0e4936",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84f79112-70f4-99d6-1ff7-2d4015e868d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bddAbove_square_of_tendsto {f : ℂ → β} {x : ℂ}
    (hf : Tendsto f (𝓝[≠] x) (𝓝 y)) :
    ∀ᶠ (c : ℝ) in 𝓝[>] 0, BddAbove (f '' (Square x c \ {x})) := by
  obtain ⟨t, htf, ht⟩ := eventually_smallSets.mp hf.eventually_bddAbove
  obtain ⟨ε, hε0, hε⟩ := nhdsWithin_hasBasis (nhds_hasBasis_square x) {x}ᶜ |>.1 t |>.mp htf
  filter_upwards [Ioo_mem_nhdsGT hε0] with ε' ⟨hε'0, hε'⟩
  exact ht _ <| (diff_subset_diff (square_subset_square hε'0 hε'.le) subset_rfl).trans hε


@[blueprint
  "diffBddAtZero"
  (title := "diffBddAtZero")
  (statement := /--
  Let $x>0$. Then for $0 < c < 1 /2$, we have that the function
  $$
  s ↦ \frac{x^s}{s(s+1)} - \frac1s
  $$
  is bounded above on the rectangle with corners at $-c-i*c$ and $c+i*c$ (except at $s=0$).
  -/)
  (proof := /--
  Applying Lemma \ref{keyIdentity}, the
   function $s ↦ x^s/s(s+1) - 1/s = x^s/s - x^0/s - x^s/(1+s)$. The last term is bounded for $s$
   away from $-1$. The first two terms are the difference quotient of the function $s ↦ x^s$ at
   $0$; since it's differentiable, the difference remains bounded as $s\to 0$.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
