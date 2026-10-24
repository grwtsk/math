# homMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d4b1f0ac9faef068165e158a31ff462d8eeeff6a0128fa34fcb8aed01c45519",
  "kind": "def",
  "lexical_name": "homMk",
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
  "slug": "hommk--ee9e37f69d33acb4b9a40717",
  "source": {
    "blob": "954ec3bac47998d1bd049f5b16e628065ed79b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee9e37f69d33acb4b9a40717e6e69495ff420833627fe2e632ff4683a8d672f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d4b1f0ac9faef068165e158a31ff462d8eeeff6a0128fa34fcb8aed01c45519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homMk {F G : ComposableArrows C n} (app : ∀ i, F.obj i ⟶ G.obj i)
    (w : ∀ (i : ℕ) (hi : i < n), F.map' i (i + 1) ≫ app _ = app _ ≫ G.map' i (i + 1)) :
    F ⟶ G where
  app := app
  naturality := by
    suffices ∀ (k i j : ℕ) (hj : i + k = j) (hj' : j ≤ n),
        F.map' i j ≫ app _ = app _ ≫ G.map' i j by
      rintro ⟨i, hi⟩ ⟨j, hj⟩ hij
      have hij' := leOfHom hij
      simp only [Fin.mk_le_mk] at hij'
      obtain ⟨k, hk⟩ := Nat.le.dest hij'
      exact this k i j hk (by valid)
    intro k
    induction' k with k hk
    · intro i j hj hj'
      simp only [add_zero] at hj
      obtain rfl := hj
      rw [F.map'_self i, G.map'_self i, id_comp, comp_id]
    · intro i j hj hj'
      rw [← add_assoc] at hj
      subst hj
      rw [F.map'_comp i (i + k) (i + k + 1), G.map'_comp i (i + k) (i + k + 1), assoc,
        w (i + k) (by valid), reassoc_of% (hk i (i + k) rfl (by valid))]

/-- Constructor for isomorphisms `F ≅ G` in `ComposableArrows C n` which takes as inputs
a family of isomorphisms `F.obj i ≅ G.obj i` and the naturality condition only for the
maps in `Fin (n + 1)` given by inequalities of the form `i ≤ i + 1`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954ec3bac47998d1bd049f5b16e628065ed79b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
