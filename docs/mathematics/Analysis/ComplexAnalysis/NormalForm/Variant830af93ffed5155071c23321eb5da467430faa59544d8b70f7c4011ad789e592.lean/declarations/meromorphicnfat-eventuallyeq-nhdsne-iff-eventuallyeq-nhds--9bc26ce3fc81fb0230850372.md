# MeromorphicNFAt.eventuallyEq_nhdsNE_iff_eventuallyEq_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b270407-7a46-b0ac-e635-f4d1dffcb9fa",
  "kind": "theorem",
  "lexical_name": "MeromorphicNFAt.eventuallyEq_nhdsNE_iff_eventuallyEq_nhds",
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
  "slug": "meromorphicnfat-eventuallyeq-nhdsne-iff-eventuallyeq-nhds--9bc26ce3fc81fb0230850372",
  "source": {
    "blob": "6eb19e8cec95b101020b7e6f35cc4c2fea2ab545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc26ce3fc81fb0230850372b7c89284d967cc3258aa6fdfe760886b30429595",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b270407-7a46-b0ac-e635-f4d1dffcb9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicNFAt.eventuallyEq_nhdsNE_iff_eventuallyEq_nhds {g : 𝕜 → E}
    (hf : MeromorphicNFAt f x) (hg : MeromorphicNFAt g x) :
    f =ᶠ[𝓝[≠] x] g ↔ f =ᶠ[𝓝 x] g := by
  constructor
  · intro h
    have t₀ := meromorphicOrderAt_congr h
    by_cases cs : meromorphicOrderAt f x = 0
    · rw [cs] at t₀
      have Z := (hf.meromorphicOrderAt_nonneg_iff_analyticAt.1 (le_of_eq cs.symm)).continuousAt
      have W := (hg.meromorphicOrderAt_nonneg_iff_analyticAt.1 (le_of_eq t₀)).continuousAt
      exact (Z.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE W).1 h
    · apply eventuallyEq_nhds_of_eventuallyEq_nhdsNE h
      let h₁f := cs
      rw [hf.meromorphicOrderAt_eq_zero_iff] at h₁f
      let h₁g := cs
      rw [t₀, hg.meromorphicOrderAt_eq_zero_iff] at h₁g
      simp only [not_not] at *
      rw [h₁f, h₁g]
  · exact (Filter.EventuallyEq.filter_mono · nhdsWithin_le_nhds)

@[deprecated (since := "2025-05-22")]
alias MeromorphicNFAt.eventuallyEq_nhdNE_iff_eventuallyEq_nhd :=
  MeromorphicNFAt.eventuallyEq_nhdsNE_iff_eventuallyEq_nhds

/-- Meromorphicity in normal form is a local property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb19e8cec95b101020b7e6f35cc4c2fea2ab545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
