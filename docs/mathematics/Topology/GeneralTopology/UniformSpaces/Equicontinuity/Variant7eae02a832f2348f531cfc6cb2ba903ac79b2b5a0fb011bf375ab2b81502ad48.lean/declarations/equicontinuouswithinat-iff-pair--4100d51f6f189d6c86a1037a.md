# equicontinuousWithinAt_iff_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39cd7e68-b4d5-a5b0-1fd7-d99047f5f531",
  "kind": "theorem",
  "lexical_name": "equicontinuousWithinAt_iff_pair",
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
  "slug": "equicontinuouswithinat-iff-pair--4100d51f6f189d6c86a1037a",
  "source": {
    "blob": "edeaa023f7615f9fc86899e670c1d0041a24cd10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 308,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4100d51f6f189d6c86a1037a11b7979172fceb506f0e00bd75285612bbfada82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39cd7e68-b4d5-a5b0-1fd7-d99047f5f531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equicontinuousWithinAt_iff_pair {F : ι → X → α} {S : Set X} {x₀ : X} (hx₀ : x₀ ∈ S) :
    EquicontinuousWithinAt F S x₀ ↔
      ∀ U ∈ 𝓤 α, ∃ V ∈ 𝓝[S] x₀, ∀ x ∈ V, ∀ y ∈ V, ∀ i, (F i x, F i y) ∈ U := by
  constructor <;> intro H U hU
  · rcases comp_symm_mem_uniformity_sets hU with ⟨V, hV, hVsymm, hVU⟩
    refine ⟨_, H V hV, fun x hx y hy i => hVU (prodMk_mem_compRel ?_ (hy i))⟩
    exact hVsymm.mk_mem_comm.mp (hx i)
  · rcases H U hU with ⟨V, hV, hVU⟩
    filter_upwards [hV] using fun x hx i => hVU x₀ (mem_of_mem_nhdsWithin hx₀ hV) x hx i

/-- Reformulation of equicontinuity at `x₀` comparing two variables near `x₀` instead of comparing
only one with `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant7eae02a832f2348f531cfc6cb2ba903ac79b2b5a0fb011bf375ab2b81502ad48.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edeaa023f7615f9fc86899e670c1d0041a24cd10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
