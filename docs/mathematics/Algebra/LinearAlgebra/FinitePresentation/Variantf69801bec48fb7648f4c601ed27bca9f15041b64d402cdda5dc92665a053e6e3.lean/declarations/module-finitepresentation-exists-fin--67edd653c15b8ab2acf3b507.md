# Module.FinitePresentation.exists_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76f1aab8-f4a6-28ed-2684-68409645979d",
  "kind": "theorem",
  "lexical_name": "Module.FinitePresentation.exists_fin",
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
  "slug": "module-finitepresentation-exists-fin--67edd653c15b8ab2acf3b507",
  "source": {
    "blob": "af334fb1032352966ab6ced2c4e4a9d1d87b2bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67edd653c15b8ab2acf3b507bc32b983fd64c7396f1a361094e15df1452d50b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76f1aab8-f4a6-28ed-2684-68409645979d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.FinitePresentation.exists_fin [fp : Module.FinitePresentation R M] :
    ∃ (n : ℕ) (K : Submodule R (Fin n → R)) (_ : M ≃ₗ[R] (Fin n → R) ⧸ K), K.FG := by
  have ⟨ι, ⟨hι₁, hι₂⟩⟩ := fp
  refine ⟨_, LinearMap.ker (linearCombination R Subtype.val ∘ₗ
    (lcongr ι.equivFin (.refl ..) ≪≫ₗ linearEquivFunOnFinite R R _).symm.toLinearMap),
    (LinearMap.quotKerEquivOfSurjective _ <| LinearMap.range_eq_top.mp ?_).symm, ?_⟩
  · simpa [range_linearCombination] using hι₁
  · simpa [LinearMap.ker_comp, Submodule.comap_equiv_eq_map_symm] using hι₂.map _

/-- A finitely presented module is isomorphic to the quotient of a finite free module by a finitely
generated submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af334fb1032352966ab6ced2c4e4a9d1d87b2bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
