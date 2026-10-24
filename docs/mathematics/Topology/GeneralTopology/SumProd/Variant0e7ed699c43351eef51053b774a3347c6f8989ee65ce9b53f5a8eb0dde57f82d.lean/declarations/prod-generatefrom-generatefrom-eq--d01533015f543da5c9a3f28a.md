# prod_generateFrom_generateFrom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a4e92f214c24d3ffa422acb7e345a78119464b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6031a0e6-d65b-d205-76fd-c96701b924e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94ac951e-9a41-4a31-b73b-05840829f7f7",
  "kind": "theorem",
  "lexical_name": "prod_generateFrom_generateFrom_eq",
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
  "slug": "prod-generatefrom-generatefrom-eq--d01533015f543da5c9a3f28a",
  "source": {
    "blob": "32a4e92f214c24d3ffa422acb7e345a78119464b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 400,
    "path": "GRWTSK/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d01533015f543da5c9a3f28acd0d78d4f1ba4049cbdcc20b315c1f65844ac298",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94ac951e-9a41-4a31-b73b-05840829f7f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_generateFrom_generateFrom_eq {X Y : Type*} {s : Set (Set X)} {t : Set (Set Y)}
    (hs : ⋃₀ s = univ) (ht : ⋃₀ t = univ) :
    @instTopologicalSpaceProd X Y (generateFrom s) (generateFrom t) =
      generateFrom (image2 (·  ×ˢ ·) s t) :=
  let G := generateFrom (image2  (·  ×ˢ ·) s t)
  le_antisymm
    (le_generateFrom fun _ ⟨_, hu, _, hv, g_eq⟩ =>
      g_eq.symm ▸
        @IsOpen.prod _ _ (generateFrom s) (generateFrom t) _ _ (GenerateOpen.basic _ hu)
          (GenerateOpen.basic _ hv))
    (le_inf
      (coinduced_le_iff_le_induced.mp <|
        le_generateFrom fun u hu =>
          have : ⋃ v ∈ t, u ×ˢ v = Prod.fst ⁻¹' u := by
            simp_rw [← prod_iUnion, ← sUnion_eq_biUnion, ht, prod_univ]
          show G.IsOpen (Prod.fst ⁻¹' u) by
            rw [← this]
            exact
              isOpen_iUnion fun v =>
                isOpen_iUnion fun hv => GenerateOpen.basic _ ⟨_, hu, _, hv, rfl⟩)
      (coinduced_le_iff_le_induced.mp <|
        le_generateFrom fun v hv =>
          have : ⋃ u ∈ s, u ×ˢ v = Prod.snd ⁻¹' v := by
            simp_rw [← iUnion_prod_const, ← sUnion_eq_biUnion, hs, univ_prod]
          show G.IsOpen (Prod.snd ⁻¹' v) by
            rw [← this]
            exact
              isOpen_iUnion fun u =>
                isOpen_iUnion fun hu => GenerateOpen.basic _ ⟨_, hu, _, hv, rfl⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a4e92f214c24d3ffa422acb7e345a78119464b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
