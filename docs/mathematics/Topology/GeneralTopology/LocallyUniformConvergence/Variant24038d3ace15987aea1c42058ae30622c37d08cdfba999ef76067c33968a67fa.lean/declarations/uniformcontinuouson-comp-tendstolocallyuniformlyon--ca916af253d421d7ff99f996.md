# UniformContinuousOn.comp_tendstoLocallyUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e16641fb31d32e20c10cc9bbdc328183aa3fe50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e92e4b3-bb8e-e03b-8882-1422fb4b603c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd8cac0f-046a-c7ed-da58-6a40f9ab905d",
  "kind": "theorem",
  "lexical_name": "UniformContinuousOn.comp_tendstoLocallyUniformlyOn",
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
  "slug": "uniformcontinuouson-comp-tendstolocallyuniformlyon--ca916af253d421d7ff99f996",
  "source": {
    "blob": "8e16641fb31d32e20c10cc9bbdc328183aa3fe50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca916af253d421d7ff99f996acd2a6f28ce1fefb82247c9e87ffbb6006d889e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd8cac0f-046a-c7ed-da58-6a40f9ab905d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformContinuousOn.comp_tendstoLocallyUniformlyOn {t : Set β}
    (hg : UniformContinuousOn g t) (hf : TendstoLocallyUniformlyOn F f p s)
    (hfs : MapsTo f s t) (hFs : ∀ᶠ n in p, MapsTo (F n) s t) :
    TendstoLocallyUniformlyOn (g ∘ F ·) (g ∘ f) p s := by
  rw [tendstoLocallyUniformlyOn_iff_forall_tendsto] at hf ⊢
  refine fun x hx ↦ Tendsto.comp hg (tendsto_inf.mpr ⟨hf x hx, tendsto_principal.mpr ?_⟩)
  filter_upwards [hFs.prod_mk eventually_mem_nhdsWithin] with y hy using ⟨hfs hy.2, hy.1 hy.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e16641fb31d32e20c10cc9bbdc328183aa3fe50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
