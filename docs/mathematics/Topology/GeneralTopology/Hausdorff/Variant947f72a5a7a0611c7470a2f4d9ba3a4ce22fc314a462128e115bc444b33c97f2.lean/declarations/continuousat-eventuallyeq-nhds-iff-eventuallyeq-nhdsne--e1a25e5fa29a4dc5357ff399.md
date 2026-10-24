# ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:578ae783-269b-0e97-13ac-459566373ce0",
  "kind": "theorem",
  "lexical_name": "ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE",
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
  "slug": "continuousat-eventuallyeq-nhds-iff-eventuallyeq-nhdsne--e1a25e5fa29a4dc5357ff399",
  "source": {
    "blob": "f13a2e98c2ccf28f2041334ec8a494d43440ba81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 650,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1a25e5fa29a4dc5357ff3996e9eabe688a9aa94277bfc9eeb517e1c0e0c2036",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:578ae783-269b-0e97-13ac-459566373ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE [T2Space Y] {x : X} {f g : X → Y}
    (hf : ContinuousAt f x) (hg : ContinuousAt g x) [(𝓝[≠] x).NeBot] :
    f =ᶠ[𝓝[≠] x] g ↔ f =ᶠ[𝓝 x] g := by
  constructor <;> intro hfg
  · apply eventuallyEq_nhds_of_eventuallyEq_nhdsNE hfg
    by_contra hCon
    obtain ⟨a, ha⟩ : {x | f x ≠ g x ∧ f x = g x}.Nonempty := by
      have h₁ := (eventually_nhdsWithin_of_eventually_nhds
        ((hf.ne_iff_eventually_ne hg).1 hCon)).and hfg
      have h₂ : ∅ ∉ 𝓝[≠] x := by exact empty_notMem (𝓝[≠] x)
      simp_all
    simp at ha
  · exact hfg.filter_mono nhdsWithin_le_nhds

@[deprecated (since := "2025-05-22")]
alias ContinuousAt.eventuallyEq_nhd_iff_eventuallyEq_nhdNE :=
  ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE

/-- A continuous map from a compact space to a Hausdorff space is a closed map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13a2e98c2ccf28f2041334ec8a494d43440ba81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
