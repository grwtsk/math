# CommShift₂Setup.int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d4fd3c16ce1ea5de787b1916d33a7b11cb320d19b101e10c3e5363bbb71986c",
  "kind": "def",
  "lexical_name": "CommShift₂Setup.int",
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
  "slug": "commshift-setup-int--1e4e731233594557e2901b68",
  "source": {
    "blob": "a90ea844557101b1f3b5fe3093f7b8e213bbc5f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e4e731233594557e2901b681f172b6c8f14ce9714e594b739c270ecdc678131",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d4fd3c16ce1ea5de787b1916d33a7b11cb320d19b101e10c3e5363bbb71986c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CommShift₂Setup.int [Preadditive D] [HasShift D ℤ]
    [∀ (n : ℤ), (shiftFunctor D n).Additive] :
    CommShift₂Setup D ℤ where
  z m n := (-1) ^ (m.1 * n.2)
  assoc _ _ _ := by
    dsimp
    rw [← zpow_add, ← zpow_add]
    #adaptation_note /-- After https://github.com/leanprover/lean4/pull/13593
    we need to re-enable model-based theory combination in `lia` for this to go through. -/
    lia +mbtc
  commShift _ _ := ⟨by cat_disch⟩
  ε p q := (-1) ^ (p * q)

namespace Functor

/-- A bifunctor `G : C₁ ⥤ C₂ ⥤ D` commutes with the shifts by `M` if all functors
`G.obj X₁` and `G.flip X₂` are equipped with `Functor.CommShift` structures, in a way
that is natural in `X₁` and `X₂`, and that these isomorphisms commute up to
the multiplication with an element in `(CatCenter D)ˣ` which is determined by
a `CommShift₂Setup D M` structure. (In most cases, one should use the
abbreviation `CommShift₂Int`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShiftTwo/Variantbe2fef994dfee1196dd7be84e0fe2520bcfdd98db36ddb300e67f2283b60a737.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90ea844557101b1f3b5fe3093f7b8e213bbc5f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
