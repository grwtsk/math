# prod_generateFrom_generateFrom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad249e3d-c736-ba8a-ab30-d97de804d02e",
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
  "slug": "prod-generatefrom-generatefrom-eq--7699dc647e28044096390a28",
  "source": {
    "blob": "9ece8a13e38809536f1374d157bab315735015e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 408,
    "path": "GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7699dc647e28044096390a28f01d6a8460b1bf36ff3d0e8db41c0d46be243d4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad249e3d-c736-ba8a-ab30-d97de804d02e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–437.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumProd/Variant3aea3df4312d0609d857266799fc3743f359a79368c409b5abebf5ef8e8f7e07.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ece8a13e38809536f1374d157bab315735015e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
