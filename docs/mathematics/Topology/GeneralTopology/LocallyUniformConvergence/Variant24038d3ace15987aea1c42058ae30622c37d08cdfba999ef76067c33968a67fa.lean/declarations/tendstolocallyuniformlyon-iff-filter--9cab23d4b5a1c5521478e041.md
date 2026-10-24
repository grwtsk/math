# tendstoLocallyUniformlyOn_iff_filter

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
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58d9ec66-49a2-d920-2ac8-ac4d81e25993",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38c8531d-04f5-9319-4ac5-7b18f831ae7a",
  "kind": "theorem",
  "lexical_name": "tendstoLocallyUniformlyOn_iff_filter",
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
  "slug": "tendstolocallyuniformlyon-iff-filter--9cab23d4b5a1c5521478e041",
  "source": {
    "blob": "8e16641fb31d32e20c10cc9bbdc328183aa3fe50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cab23d4b5a1c5521478e0419c72ddb5040f131a9cfd57125a2249bce3d14923",
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

Occurrence: `result:38c8531d-04f5-9319-4ac5-7b18f831ae7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoLocallyUniformlyOn_iff_filter :
    TendstoLocallyUniformlyOn F f p s ↔ ∀ x ∈ s, TendstoUniformlyOnFilter F f p (𝓝[s] x) := by
  simp only [TendstoUniformlyOnFilter, eventually_prod_iff]
  constructor
  · rintro h x hx u hu
    obtain ⟨s, hs1, hs2⟩ := h u hu x hx
    exact ⟨_, hs2, _, eventually_of_mem hs1 fun x => id, fun hi y hy => hi y hy⟩
  · rintro h u hu x hx
    obtain ⟨pa, hpa, pb, hpb, h⟩ := h x hx u hu
    exact ⟨{a | pb a}, hpb, eventually_of_mem hpa fun i hi y hy => h hi hy⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant24038d3ace15987aea1c42058ae30622c37d08cdfba999ef76067c33968a67fa.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e16641fb31d32e20c10cc9bbdc328183aa3fe50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
