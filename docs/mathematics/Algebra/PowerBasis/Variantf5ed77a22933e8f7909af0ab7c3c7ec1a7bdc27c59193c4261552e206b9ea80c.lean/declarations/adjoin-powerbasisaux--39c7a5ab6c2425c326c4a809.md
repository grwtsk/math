# adjoin.powerBasisAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e53b75c6500ae009127cec3d1b82778395234b24947d94f83d10a7774a88db89",
  "kind": "def",
  "lexical_name": "adjoin.powerBasisAux",
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
  "slug": "adjoin-powerbasisaux--39c7a5ab6c2425c326c4a809",
  "source": {
    "blob": "ea84f5e04d127797b96e535ffaa546ca20b03ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 41,
    "path": "GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39c7a5ab6c2425c326c4a809d1ab85ed04d32b30b582d7e6bed6ec7d802f29d4",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e53b75c6500ae009127cec3d1b82778395234b24947d94f83d10a7774a88db89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def adjoin.powerBasisAux {x : S} (hx : IsIntegral K x) :
    Basis (Fin (minpoly K x).natDegree) K (adjoin K ({x} : Set S)) := by
  have hST : Function.Injective (algebraMap (adjoin K ({x} : Set S)) S) := Subtype.coe_injective
  have hx' :
    IsIntegral K (⟨x, subset_adjoin (Set.mem_singleton x)⟩ : adjoin K ({x} : Set S)) := by
    apply (isIntegral_algebraMap_iff hST).mp
    convert hx
  have minpoly_eq := minpoly.eq_of_algebraMap_eq hST hx' rfl
  apply
    @Basis.mk (Fin (minpoly K x).natDegree) _ (adjoin K {x}) fun i =>
      ⟨x, subset_adjoin (Set.mem_singleton x)⟩ ^ (i : ℕ)
  · have : LinearIndependent K _ := linearIndependent_pow
      (⟨x, self_mem_adjoin_singleton _ _⟩ : adjoin K {x})
    rwa [minpoly_eq] at this
  · rintro ⟨y, hy⟩ _
    have := hx'.mem_span_pow (y := ⟨y, hy⟩)
    rw [minpoly_eq] at this
    apply this
    · rw [adjoin_singleton_eq_range_aeval] at hy
      obtain ⟨f, rfl⟩ := (aeval x).mem_range.mp hy
      use f
      ext
      exact aeval_algebraMap_apply S (⟨x, _⟩ : adjoin K {x}) _
#align algebra.adjoin.power_basis_aux Algebra.adjoin.powerBasisAux

/-- The power basis `1, x, ..., x ^ (d - 1)` for `K[x]`,
where `d` is the degree of the minimal polynomial of `x`. See `Algebra.adjoin.powerBasis'` for
a version over a more general base ring. -/
@[simps gen dim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea84f5e04d127797b96e535ffaa546ca20b03ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
