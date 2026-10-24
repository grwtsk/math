# ofSequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:739ad800df5e74f978a77ef3ed8cafb680aebbf0a7ec1a703ef0f099f5112bc5",
  "kind": "def",
  "lexical_name": "ofSequence",
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
  "slug": "ofsequence--51e2dae62fb913d7c2f9d006",
  "source": {
    "blob": "e1bf6334adeac0f26465d393215a7bb5416626b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51e2dae62fb913d7c2f9d0068ed999bf8af6d105cdb69c09e4e1f20559495b29",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:739ad800df5e74f978a77ef3ed8cafb680aebbf0a7ec1a703ef0f099f5112bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSequence : F ⟶ G where
  app := app
  naturality := by
    intro i j φ
    obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_le (leOfHom φ)
    obtain rfl := Subsingleton.elim φ (homOfLE (by omega))
    revert i j
    induction k with
    | zero =>
        intro i j hk
        obtain rfl : j = i := by omega
        simp
    | succ k hk =>
        intro i j hk'
        obtain rfl : j = i + k + 1 := by omega
        simp only [← homOfLE_comp (show i ≤ i + k by omega) (show i + k ≤ i + k + 1 by omega),
          Functor.map_comp, assoc, naturality, reassoc_of% (hk rfl)]

end NatTrans

namespace Functor

variable {X : ℕ → C} (f : ∀ n, X (n + 1) ⟶ X n)

/-- The functor `ℕᵒᵖ ⥤ C` constructed from a sequence of
morphisms `f : X (n + 1) ⟶ X n` for all `n : ℕ`. -/
@[simps! obj]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bf6334adeac0f26465d393215a7bb5416626b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
