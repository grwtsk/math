# Module.finitePresentation_of_split_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e014165-36e9-1b03-22f2-fedbc4a40394",
  "kind": "lemma",
  "lexical_name": "Module.finitePresentation_of_split_exact",
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
  "slug": "module-finitepresentation-of-split-exact--d9916fdc0b0e085518b4829c",
  "source": {
    "blob": "af334fb1032352966ab6ced2c4e4a9d1d87b2bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 254,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9916fdc0b0e085518b4829ce6af0371ab8852213da1548de8be5625cff2f486",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e014165-36e9-1b03-22f2-fedbc4a40394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.finitePresentation_of_split_exact
    {P : Type*} [AddCommGroup P] [Module R P]
    [Module.FinitePresentation R N]
    (f : M →ₗ[R] N) (g : N →ₗ[R] P) (l : P →ₗ[R] N) (hl : g ∘ₗ l = .id)
    (hf : Function.Injective f) (H : Function.Exact f g) :
    Module.FinitePresentation R M := by
  have hg : Function.Surjective g := Function.LeftInverse.surjective (DFunLike.congr_fun hl)
  have := Module.Finite.of_surjective g hg
  obtain ⟨e, rfl, rfl⟩ := ((Function.Exact.split_tfae' H).out 0 2 rfl rfl).mp
    ⟨hf, l, hl⟩
  refine Module.finitePresentation_of_surjective (LinearMap.fst _ _ _ ∘ₗ e.toLinearMap)
    (Prod.fst_surjective.comp e.surjective) ?_
  rw [LinearMap.ker_comp, Submodule.comap_equiv_eq_map_symm,
    LinearMap.exact_iff.mp Function.Exact.inr_fst, ← Submodule.map_top]
  exact .map _ (.map _ (Module.Finite.fg_top))

/-- Given an exact sequence `0 → M → N → P → 0`
with `N` finitely presented and `P` projective, then `M` is also finitely presented. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af334fb1032352966ab6ced2c4e4a9d1d87b2bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
