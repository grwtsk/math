# measure_le_of_pairwise_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c3f509c-1305-901d-8071-7b5c661f7938",
  "kind": "theorem",
  "lexical_name": "measure_le_of_pairwise_disjoint",
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
  "slug": "measure-le-of-pairwise-disjoint--f657c2356e71b4091d4d2505",
  "source": {
    "blob": "6d63790ce1c96239f0d230135a22798c75606ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 432,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f657c2356e71b4091d4d2505368a82c3b42e3eb5cb41a24d0a0670ab4c07798d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c3f509c-1305-901d-8071-7b5c661f7938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_of_pairwise_disjoint (hs : IsFundamentalDomain G s μ)
    (ht : NullMeasurableSet t μ) (hd : Pairwise (AEDisjoint μ on fun g : G => g • t ∩ s)) :
    μ t ≤ μ s :=
  calc
    μ t = ∑' g : G, μ (g • t ∩ s) := hs.measure_eq_tsum t
    _ = μ (⋃ g : G, g • t ∩ s) := Eq.symm <| measure_iUnion₀ hd fun _ =>
      (ht.smul _).inter hs.nullMeasurableSet
    _ ≤ μ s := measure_mono (iUnion_subset fun _ => inter_subset_right)

/-- If the action of a countable group `G` admits an invariant measure `μ` with a fundamental domain
`s`, then every null-measurable set `t` of measure strictly greater than `μ s` contains two
points `x y` such that `g • x = y` for some `g ≠ 1`. -/
@[to_additive /-- If the additive action of a countable group `G` admits an invariant measure `μ`
  with a fundamental domain `s`, then every null-measurable set `t` of measure strictly greater than
  `μ s` contains two points `x y` such that `g +ᵥ x = y` for some `g ≠ 0`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d63790ce1c96239f0d230135a22798c75606ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
