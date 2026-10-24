# eventually_analyticAt_or_mem_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2819d144-c612-930e-7645-17d563753ab6",
  "kind": "theorem",
  "lexical_name": "eventually_analyticAt_or_mem_compl",
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
  "slug": "eventually-analyticat-or-mem-compl--2c36b6d79ac375fbd9279e97",
  "source": {
    "blob": "ace2447fe9662ea6c0b2f7078d2d3402604e1035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 694,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c36b6d79ac375fbd9279e974b0ca29c90df2df7f8910a8912c3dc62b4d38383",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2819d144-c612-930e-7645-17d563753ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_analyticAt_or_mem_compl (h : MeromorphicOn f U) (hx : x ∈ U) :
    ∀ᶠ y in 𝓝[≠] x, AnalyticAt 𝕜 f y ∨ y ∈ Uᶜ := by
  have : {x}ᶜ = (U \ {x}) ∪ Uᶜ := by aesop (add simp Classical.em)
  rw [this, nhdsWithin_union]
  simp only [mem_compl_iff, eventually_sup]
  refine ⟨?_, ?_⟩
  · filter_upwards [h.eventually_analyticAt hx] with y hy using Or.inl hy
  · filter_upwards [self_mem_nhdsWithin] with y hy using Or.inr hy

/-- Meromorphic functions on `U` are analytic on `U`, outside of a discrete subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variant8dbd97d7fcf7015efe00632c246c13a71f064e752436c4074e0acd453ab74f8e.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace2447fe9662ea6c0b2f7078d2d3402604e1035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
