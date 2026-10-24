# eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ffe4875-319e-ab88-01d5-f5f4717fc4ac",
  "kind": "theorem",
  "lexical_name": "eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset",
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
  "slug": "eventually-mapsto-of-iscompact-absorbing-of-isopen-of-omegalimit-subset--37849476dcc3c0f35850f08d",
  "source": {
    "blob": "766da83250174660c01cd61b9456d5b65aa6db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37849476dcc3c0f35850f08d064e2633956889ee30562af8656b9372ef5c4fe4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ffe4875-319e-ab88-01d5-f5f4717fc4ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_mapsTo_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset [T2Space β]
    {c : Set β} (hc₁ : IsCompact c) (hc₂ : ∀ᶠ t in f, MapsTo (ϕ t) s c) {n : Set β} (hn₁ : IsOpen n)
    (hn₂ : ω f ϕ s ⊆ n) : ∀ᶠ t in f, MapsTo (ϕ t) s n := by
  rcases eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset f ϕ s hc₁
      hc₂ hn₁ hn₂ with
    ⟨u, hu_mem, hu⟩
  refine mem_of_superset hu_mem fun t ht x hx ↦ ?_
  exact hu (subset_closure <| mem_image2_of_mem ht hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant5b42b70140c31605496a70d528fb778deba7e93dba6a71ab29cca69c469d13d7.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `766da83250174660c01cd61b9456d5b65aa6db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
