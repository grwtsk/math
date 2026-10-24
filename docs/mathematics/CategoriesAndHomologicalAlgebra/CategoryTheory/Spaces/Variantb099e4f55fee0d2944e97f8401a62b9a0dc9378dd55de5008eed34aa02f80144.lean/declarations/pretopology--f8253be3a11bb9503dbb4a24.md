# pretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db1dbdcb22b976ed44e1f5fb44bb1d066fb8b9b5ffdd0cf638c51c009cdcf880",
  "kind": "def",
  "lexical_name": "pretopology",
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
  "slug": "pretopology--f8253be3a11bb9503dbb4a24",
  "source": {
    "blob": "c85c6bdae24c93c96a89916e209318f1cce18422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8253be3a11bb9503dbb4a24973887abde5be4cba21753285dffd8f5dc48c794",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db1dbdcb22b976ed44e1f5fb44bb1d066fb8b9b5ffdd0cf638c51c009cdcf880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pretopology : Pretopology (Opens T) where
  coverings X R := ∀ x ∈ X, ∃ (U : _) (f : U ⟶ X), R f ∧ x ∈ U
  has_isos _ _ f _ _ hx := ⟨_, _, Presieve.singleton_self _, (inv f).le hx⟩
  pullbacks X Y f S hS x hx := by
    rcases hS _ (f.le hx) with ⟨U, g, hg, hU⟩
    refine ⟨_, _, Presieve.pullbackArrows.mk _ _ hg, ?_⟩
    have : U ⊓ Y ≤ pullback g f :=
      leOfHom (pullback.lift (homOfLE inf_le_left) (homOfLE inf_le_right) rfl)
    apply this ⟨hU, hx⟩
  transitive X S Ti hS hTi x hx := by
    rcases hS x hx with ⟨U, f, hf, hU⟩
    rcases hTi f hf x hU with ⟨V, g, hg, hV⟩
    exact ⟨_, _, ⟨_, g, f, hf, hg, rfl⟩, hV⟩

/-- The pretopology associated to a space is the largest pretopology that
    generates the Grothendieck topology associated to the space. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85c6bdae24c93c96a89916e209318f1cce18422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
