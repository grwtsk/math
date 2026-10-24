# divisor_congr_codiscreteWithin_of_eqOn_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:351f33e6-8824-faf6-7763-8579fe13be5b",
  "kind": "theorem",
  "lexical_name": "divisor_congr_codiscreteWithin_of_eqOn_compl",
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
  "slug": "divisor-congr-codiscretewithin-of-eqon-compl--167b554695f23ac7158997b6",
  "source": {
    "blob": "507efea28ee514d9c1202a5f23c09e192048c30b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:167b554695f23ac7158997b6ec59fbcefece90ed910ead683f844c1e3c7e210d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:351f33e6-8824-faf6-7763-8579fe13be5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_congr_codiscreteWithin_of_eqOn_compl {f₁ f₂ : 𝕜 → E} (hf₁ : MeromorphicOn f₁ U)
    (h₁ : f₁ =ᶠ[Filter.codiscreteWithin U] f₂) (h₂ : Set.EqOn f₁ f₂ Uᶜ) :
    divisor f₁ U = divisor f₂ U := by
  ext x
  by_cases hx : x ∈ U
  · simp only [hf₁, hx, divisor_apply, hf₁.congr_codiscreteWithin_of_eqOn_compl h₁ h₂]
    congr 1
    apply meromorphicOrderAt_congr
    simp_rw [EventuallyEq, Filter.Eventually, mem_codiscreteWithin,
      disjoint_principal_right] at h₁
    filter_upwards [h₁ x hx] with a ha
    simp at ha
    tauto
  · simp [hx]

/--
If `f₁` is meromorphic on an open set `U`, if `f₂` agrees with `f₁` on a codiscrete subset of `U`,
then `f₁` and `f₂` induce the same divisors on`U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisor/Variantc5c3e0f6ce79702cce585fb0aa4ecacd92d76399920c42847ded9ca424c63294.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `507efea28ee514d9c1202a5f23c09e192048c30b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
