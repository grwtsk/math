# tStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfd162a6ede2776c5dbf1adb9ae0531bc8dd6aa320b38550ae911c6facdd2927",
  "kind": "def",
  "lexical_name": "tStructure",
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
  "slug": "tstructure--6485d305f87bdacaef9781d0",
  "source": {
    "blob": "09661d1b06f2199ee8309d021f36756fabc7ba9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6485d305f87bdacaef9781d046ac09d213d5dcf60febaae215589edc98289e29",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfd162a6ede2776c5dbf1adb9ae0531bc8dd6aa320b38550ae911c6facdd2927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tStructure : TStructure P.FullSubcategory where
  le n X := t.le n X.obj
  ge n X := t.ge n X.obj
  le_isClosedUnderIsomorphisms n := ⟨fun {X Y} e hX ↦ (t.le n).prop_of_iso (P.ι.mapIso e) hX⟩
  ge_isClosedUnderIsomorphisms n := ⟨fun {X Y} e hX ↦ (t.ge n).prop_of_iso (P.ι.mapIso e) hX⟩
  le_shift n a n' h X hX := (t.le n').prop_of_iso ((P.ι.commShiftIso a).symm.app X)
      (t.le_shift n a n' h X.obj hX)
  ge_shift n a n' h X hX := (t.ge n').prop_of_iso ((P.ι.commShiftIso a).symm.app X)
    (t.ge_shift n a n' h X.obj hX)
  zero' {X Y} f hX hY := P.ι.map_injective (by
    rw [Functor.map_zero]
    exact t.zero' (P.ι.map f) hX hY)
  le_zero_le X hX := t.le_zero_le _ hX
  ge_one_le X hX := t.ge_one_le _ hX
  exists_triangle_zero_one A := by
    obtain ⟨X, Y, hX, hY, f, g, h, hT, ⟨X', hX', ⟨e⟩⟩, ⟨Y', hY', ⟨e'⟩⟩⟩ :=
      h.exists_triangle_zero_one A.1 A.2
    exact ⟨⟨X', hX'⟩, ⟨Y', hY'⟩, (t.le 0).prop_of_iso e hX.le,
      (t.ge 1).prop_of_iso e' hY.ge,
      P.fullyFaithfulι.preimage (e.inv ≫ f),
      P.fullyFaithfulι.preimage (g ≫ e'.hom),
      P.fullyFaithfulι.preimage (e'.inv ≫ h ≫ e.hom⟦(1 : ℤ)⟧' ≫
          (P.ι.commShiftIso (1 : ℤ)).inv.app ⟨X', hX'⟩),
      isomorphic_distinguished _ hT _ (Triangle.isoMk _ _ e.symm (Iso.refl _) e'.symm)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant49a5aaed25bd59245774abd7b0c5ad4536f1721a1e2d396e196b074ee1ee7a7c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09661d1b06f2199ee8309d021f36756fabc7ba9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
