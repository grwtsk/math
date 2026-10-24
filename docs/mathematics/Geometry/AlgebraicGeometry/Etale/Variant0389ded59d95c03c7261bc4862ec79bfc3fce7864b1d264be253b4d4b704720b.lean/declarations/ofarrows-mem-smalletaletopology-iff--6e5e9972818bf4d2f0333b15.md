# ofArrows_mem_smallEtaleTopology_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "274265ad316c787863c03c30a8cc6d137c20ff19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7afa327-7a2c-ec95-af35-41d5922d1d5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e54caf4-6ee0-2ab3-2294-c854b6f30a00",
  "kind": "lemma",
  "lexical_name": "ofArrows_mem_smallEtaleTopology_iff",
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
  "slug": "ofarrows-mem-smalletaletopology-iff--6e5e9972818bf4d2f0333b15",
  "source": {
    "blob": "274265ad316c787863c03c30a8cc6d137c20ff19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 60,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e5e9972818bf4d2f0333b150fe37896698c9996b54e5f0c9d51dc99b49c7f50",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e54caf4-6ee0-2ab3-2294-c854b6f30a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofArrows_mem_smallEtaleTopology_iff
    {X : Scheme.{u}} {W : X.Etale} {ι : Type*}
    {Z : ι → X.Etale} (f : ∀ i, Z i ⟶ W) :
    Sieve.ofArrows _ f ∈ smallEtaleTopology _ _ ↔
      ⋃ i, Set.range (f i).left = .univ := by
  refine ⟨fun hf ↦ ?_, fun hf ↦ (mem_smallGrothendieckTopology _ _).2 ?_⟩
  · obtain ⟨U, _, _, hU⟩ := (mem_smallGrothendieckTopology _ _).1 hf
    ext y
    simp only [Set.mem_iUnion, Set.mem_range, Set.mem_univ, iff_true]
    obtain ⟨i, ⟨u, rfl⟩⟩ := ((ofArrows_mem_precoverage_iff _).1 U.mem₀).1 y
    obtain ⟨_, b, _, ⟨j⟩, fac⟩ := hU _ _ ⟨i⟩
    replace fac : b.left ≫ (f j).left = U.f i :=
      (Etale.forget _ ⋙ CategoryTheory.Over.forget _).congr_map fac
    exact ⟨j, b.left u, by simp [← fac]⟩
  · have (w : W.left) : ∃ (i : ι), w ∈ Set.range (f i).left := by
      have := Set.mem_univ w
      simpa [← hf]
    choose i z hz using this
    let V : Cover (precoverage @Etale) W.left :=
      Cover.mkOfCovers W.left (fun w ↦ (Z (i w)).left)
        (fun w ↦ (f (i w)).left) (fun w ↦ ⟨_, _, hz w⟩) inferInstance
    let : Cover.Over X V :=
      { over w := ⟨(Z (i w)).hom⟩
        isOver_map w := by cat_disch }
    have (w : W.left) : Etale (V.X w ↘ X) := (Z (i w)).prop
    refine ⟨V, inferInstance, inferInstance, ?_⟩
    rintro _ _ ⟨w⟩
    refine ⟨_, 𝟙 _, _, ⟨i w⟩, by cat_disch⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Etale/Variant0389ded59d95c03c7261bc4862ec79bfc3fce7864b1d264be253b4d4b704720b.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274265ad316c787863c03c30a8cc6d137c20ff19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
