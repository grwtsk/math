# specializes_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59b2ec991587de238c6e0c425547d933a2a33a35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:275169e3-debb-0022-6bcc-c94975817956",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae375ab0-5aaf-7ef2-147e-8c4419bf7ec8",
  "kind": "theorem",
  "lexical_name": "specializes_TFAE",
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
  "slug": "specializes-tfae--b62952d213ff20530315939e",
  "source": {
    "blob": "59b2ec991587de238c6e0c425547d933a2a33a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b62952d213ff20530315939e9291281b8f9e6bca8bfebd5502c9c9a33ba4dc42",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae375ab0-5aaf-7ef2-147e-8c4419bf7ec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem specializes_TFAE (x y : X) :
    List.TFAE [x ⤳ y,
      pure x ≤ 𝓝 y,
      ∀ s : Set X, IsOpen s → y ∈ s → x ∈ s,
      ∀ s : Set X, IsClosed s → x ∈ s → y ∈ s,
      y ∈ closure ({ x } : Set X),
      closure ({ y } : Set X) ⊆ closure { x },
      ClusterPt y (pure x)] := by
  tfae_have 1 → 2 := (pure_le_nhds _).trans
  tfae_have 2 → 3 := fun h s hso hy => h (hso.mem_nhds hy)
  tfae_have 3 → 4 := fun h s hsc hx => of_not_not fun hy => h sᶜ hsc.isOpen_compl hy hx
  tfae_have 4 → 5 := fun h => h _ isClosed_closure (subset_closure <| mem_singleton _)
  tfae_have 6 ↔ 5 := isClosed_closure.closure_subset_iff.trans singleton_subset_iff
  tfae_have 5 ↔ 7 := by
    rw [mem_closure_iff_clusterPt, principal_singleton]
  tfae_have 5 → 1 := by
    refine fun h => (nhds_basis_opens _).ge_iff.2 ?_
    rintro s ⟨hy, ho⟩
    rcases mem_closure_iff.1 h s ho hy with ⟨z, hxs, rfl : z = x⟩
    exact ho.mem_nhds hxs
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variantdca5fb650652280da014c44e928d3992da800db80c65ffebcdf51e3f2e5c0556.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b2ec991587de238c6e0c425547d933a2a33a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
