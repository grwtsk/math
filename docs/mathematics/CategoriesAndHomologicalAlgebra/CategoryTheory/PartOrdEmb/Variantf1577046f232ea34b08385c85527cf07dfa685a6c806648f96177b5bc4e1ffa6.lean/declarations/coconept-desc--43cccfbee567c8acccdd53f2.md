# CoconePt.desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d3af94cc3eef10b3d704d23cdabe7b840f8b0ba3c8b06a564e88caf73c4c1c8",
  "kind": "def",
  "lexical_name": "CoconePt.desc",
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
  "slug": "coconept-desc--43cccfbee567c8acccdd53f2",
  "source": {
    "blob": "2fd0d922f6f8d4abc498c89f6a390e3b25d7fbac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43cccfbee567c8acccdd53f216a7c482647fed7f53af813020570d24de561d7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d3af94cc3eef10b3d704d23cdabe7b840f8b0ba3c8b06a564e88caf73c4c1c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CoconePt.desc (s : Cocone F) : CoconePt hc ↪o s.pt where
  toFun := hc.desc ((forget _).mapCocone s)
  inj' x y h := by
    obtain ⟨j, x', y', rfl, rfl⟩ :=
      Types.FilteredColimit.jointly_surjective_of_isColimit₂ hc x y
    obtain rfl := (s.ι.app j).injective
      (((ConcreteCategory.congr_hom (hc.fac ((forget _).mapCocone s) j) x').symm.trans h).trans
        (ConcreteCategory.congr_hom (hc.fac ((forget _).mapCocone s) j) y'))
    rfl
  map_rel_iff' {x y} := by
    obtain ⟨j, x', y', rfl, rfl⟩ :=
      Types.FilteredColimit.jointly_surjective_of_isColimit₂ hc x y
    have hx := ConcreteCategory.congr_hom (hc.fac ((forget _).mapCocone s) j) x'
    have hy := ConcreteCategory.congr_hom (hc.fac ((forget _).mapCocone s) j) y'
    simp only [Functor.mapCocone_pt, Functor.comp_obj, Functor.const_obj_obj,
      CategoryTheory.comp_apply, Functor.mapCocone_ι_app, ConcreteCategory.hom_ofHom,
      TypeCat.Fun.coe_mk, Function.Embedding.coeFn_mk] at hx hy ⊢
    rw [hx, hy, OrderEmbedding.le_iff_le]
    refine ⟨fun h ↦ ⟨j, _, _, rfl, rfl, h⟩, fun ⟨k, x, y, hx', hy', h⟩ ↦ ?_⟩
    obtain ⟨l, f, g, hl⟩ := (Types.FilteredColimit.isColimit_eq_iff _ hc).1 hx'
    obtain ⟨l', f', g', hl'⟩ := (Types.FilteredColimit.isColimit_eq_iff _ hc).1 hy'
    obtain ⟨m, a, b, h₁, h₂⟩ := bowtie f f' g g'
    dsimp at hl hl'
    rw [← (F.map (f ≫ a)).le_iff_le] at h
    rw [← (F.map (g ≫ a)).le_iff_le]
    exact le_of_eq_of_le (by simp [hl]) (le_of_le_of_eq h (by simp [h₁, h₂, hl']))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrdEmb/Variantf1577046f232ea34b08385c85527cf07dfa685a6c806648f96177b5bc4e1ffa6.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd0d922f6f8d4abc498c89f6a390e3b25d7fbac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
