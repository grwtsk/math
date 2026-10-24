# coinduced_eq_induced_of_isOpenQuotientMap_of_isInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d57a66-0c0b-a896-c015-17c8eda5bf54",
  "kind": "lemma",
  "lexical_name": "coinduced_eq_induced_of_isOpenQuotientMap_of_isInducing",
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
  "slug": "coinduced-eq-induced-of-isopenquotientmap-of-isinducing--89dcae93ac023c2ecf28ea7f",
  "source": {
    "blob": "269521cb7bcc7b11fb63c8eb467290b808a3cd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89dcae93ac023c2ecf28ea7f385d3a13e8135b82bbdd9ee68af6074eca3ade5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d57a66-0c0b-a896-c015-17c8eda5bf54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coinduced_eq_induced_of_isOpenQuotientMap_of_isInducing
    (h : g ∘ p = q ∘ f)
    (hf : IsInducing f) (hp : Function.Surjective p)
    (hq : IsOpenQuotientMap q) (hg : Function.Injective g)
    (H : q ⁻¹' (q '' (Set.range f)) ⊆ Set.range f) :
    ‹TopologicalSpace A›.coinduced p = ‹TopologicalSpace D›.induced g := by
  ext U
  show IsOpen (p ⁻¹' U) ↔ ∃ V, _
  simp_rw [hf.isOpen_iff,
    (Set.image_surjective.mpr hq.surjective).exists,
    ← hq.isQuotientMap.isOpen_preimage]
  constructor
  · rintro ⟨V, hV, e⟩
    refine ⟨V, hq.continuous.1 _ (hq.isOpenMap _ hV), ?_⟩
    ext x
    obtain ⟨x, rfl⟩ := hp x
    constructor
    · rintro ⟨y, hy, e'⟩
      obtain ⟨y, rfl⟩ := H ⟨_, ⟨x, rfl⟩, (e'.trans (congr_fun h x)).symm⟩
      rw [← hg ((congr_fun h y).trans e')]
      exact e.le hy
    · intro H
      exact ⟨f x, e.ge H, congr_fun h.symm x⟩
  · rintro ⟨V, hV, rfl⟩
    refine ⟨_, hV, ?_⟩
    simp_rw [← Set.preimage_comp, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `269521cb7bcc7b11fb63c8eb467290b808a3cd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
