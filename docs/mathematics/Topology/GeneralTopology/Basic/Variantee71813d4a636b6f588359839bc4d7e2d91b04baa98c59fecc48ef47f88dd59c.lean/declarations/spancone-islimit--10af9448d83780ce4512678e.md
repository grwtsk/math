# spanCone_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d784e782981ec0c5d171bdef1b7b694302ab1af3f6c92b6fafaf2787dc95748",
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
  "slug": "spancone-islimit--10af9448d83780ce4512678e",
  "source": {
    "blob": "5d7bf4d8f6605259eeb0a8b72099922ba045358b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10af9448d83780ce4512678e8c74cdf94205d877e2b82de4695d927dcce3a92a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d784e782981ec0c5d171bdef1b7b694302ab1af3f6c92b6fafaf2787dc95748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spanCone_isLimit [∀ (s : Finset I) (i : I), Decidable (i ∈ s)] (hC : IsCompact C) :
    CategoryTheory.Limits.IsLimit (spanCone hC) :=
  IsLimit.postcomposeHomEquiv (spanFunctorIsoIndexFunctor hC) _
    (IsLimit.ofIsoLimit (indexCone_isLimit hC) (Cone.ext (Iso.refl _) (fun ⟨s⟩ ↦ by
      ext
      have : iso_map C (· ∈ s) ∘ ProjRestrict C (· ∈ s) = IndexFunctor.π_app C (· ∈ s) := by
        ext _ i; exact dite_eq_left i.prop
      exact congr_fun this.symm _)))

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7bf4d8f6605259eeb0a8b72099922ba045358b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
