# EquicontinuousOn.isClosed_range_pi_of_uniformOnFun'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3069f071cbafced3f95c479d48b9d209b2213cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93103947-94b5-fadb-e64e-0b7c234136bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea73f359-d85b-1856-cb35-ea9903090611",
  "kind": "theorem",
  "lexical_name": "EquicontinuousOn.isClosed_range_pi_of_uniformOnFun'",
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
  "slug": "equicontinuouson-isclosed-range-pi-of-uniformonfun--e7c08b3ef021e7d6e04f0a96",
  "source": {
    "blob": "b3069f071cbafced3f95c479d48b9d209b2213cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7c08b3ef021e7d6e04f0a96503f45af0461f8bdf89f132de5cac2d126cb4723",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea73f359-d85b-1856-cb35-ea9903090611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EquicontinuousOn.isClosed_range_pi_of_uniformOnFun'
    {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K)
    (H : IsClosed (range <| UniformOnFun.ofFun 𝔖 ∘ F)) :
    IsClosed (range <| (⋃₀ 𝔖).restrict ∘ F) := by
  -- Do we have no equivalent of `nontriviality`?
  rcases isEmpty_or_nonempty α with _ | _
  · simp [isClosed_discrete]
  -- This follows from the previous lemmas and the characterization of the closure using filters.
  simp_rw [isClosed_iff_clusterPt, ← Filter.map_top, ← mapClusterPt_def,
    mapClusterPt_iff_ultrafilter, range_comp, Subtype.coe_injective.surjective_comp_right.forall,
    ← restrict_eq, ← EquicontinuousOn.tendsto_uniformOnFun_iff_pi' 𝔖_compact F_eqcont]
  exact fun f ⟨u, _, hu⟩ ↦ mem_image_of_mem _ <| H.mem_of_tendsto hu <|
    Eventually.of_forall mem_range_self

/-- Let `X` be a topological space, `𝔖` a covering of `X` by compact subsets, and
`α` a uniform space. An equicontinuous subset of `X → α` is closed in the topology of uniform
convergence on all `K ∈ 𝔖` iff it is closed in the topology of pointwise convergence.

This is a specialization of `EquicontinuousOn.isClosed_range_pi_of_uniformOnFun'` to the case where
`𝔖` covers `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3069f071cbafced3f95c479d48b9d209b2213cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
