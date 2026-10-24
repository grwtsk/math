# spanCone_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68853418e278e5968d595a005fe2dd161b2b7e9c7abca43cc099959c1519ac80",
  "kind": "def",
  "lexical_name": "spanCone_isLimit",
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
  "slug": "spancone-islimit--699def3903f9149372c7a212",
  "source": {
    "blob": "8b4928c820efb0d262bba745da216ca269b97e41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:699def3903f9149372c7a212203a5092649ad8deb551a336099a5830378892d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68853418e278e5968d595a005fe2dd161b2b7e9c7abca43cc099959c1519ac80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spanCone_isLimit [∀ (s : Finset I) (i : I), Decidable (i ∈ s)] (hC : IsCompact C) :
    CategoryTheory.Limits.IsLimit (spanCone hC) := by
  refine (IsLimit.postcomposeHomEquiv (NatIso.ofComponents
    (fun s ↦ (CompHausLike.isoOfBijective _ (iso_map_bijective C (· ∈ unop s)))) ?_) (spanCone hC))
    (IsLimit.ofIsoLimit (indexCone_isLimit hC) (Cones.ext (Iso.refl _) ?_))
  · intro ⟨s⟩ ⟨t⟩ ⟨⟨⟨f⟩⟩⟩
    ext x
    have : iso_map C (· ∈ t) ∘ ProjRestricts C f = IndexFunctor.map C f ∘ iso_map C (· ∈ s) := by
      ext _ i; exact dif_pos i.prop
    exact congr_fun this x
  · intro ⟨s⟩
    ext x
    have : iso_map C (· ∈ s) ∘ ProjRestrict C (· ∈ s) = IndexFunctor.π_app C (· ∈ s) := by
      ext _ i; exact dif_pos i.prop
    erw [← this]
    rfl

end Projections

section Products
/-!
## Defining the basis

Our proposed basis consists of products `e C iᵣ * ⋯ * e C i₁` with `iᵣ > ⋯ > i₁` which cannot be
written as linear combinations of lexicographically smaller products. See below for the definition
of `e`.

### Main definitions

* For `i : I`, we let `e C i : LocallyConstant C ℤ` denote the map
  `fun f ↦ (if f.val i then 1 else 0)`.

* `Products I` is the type of lists of decreasing elements of `I`, so a typical element is
  `[i₁, i₂,..., iᵣ]` with `i₁ > i₂ > ... > iᵣ`.

* `Products.eval C` is the `C`-evaluation of a list. It takes a term `[i₁, i₂,..., iᵣ] : Products I`
  and returns the actual product `e C i₁ ··· e C iᵣ : LocallyConstant C ℤ`.

* `GoodProducts C` is the set of `Products I` such that their `C`-evaluation cannot be written as
  a linear combination of evaluations of lexicographically smaller lists.

### Main results

* `Products.evalFacProp` and `Products.evalFacProps` establish the fact that `Products.eval`
  interacts nicely with the projection maps from the previous section.

* `GoodProducts.span_iff_products`: the good products span `LocallyConstant C ℤ` iff all the
  products span `LocallyConstant C ℤ`.
-/

/--
`e C i` is the locally constant map from `C : Set (I → Bool)` to `ℤ` sending `f` to 1 if
`f.val i = true`, and 0 otherwise.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4928c820efb0d262bba745da216ca269b97e41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
