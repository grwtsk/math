# Module.FinitePresentation.fg_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d083a79-1eec-835a-6f57-70378742f1bf",
  "kind": "lemma",
  "lexical_name": "Module.FinitePresentation.fg_ker",
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
  "slug": "module-finitepresentation-fg-ker--d3c2c1e8cd29768f358b3482",
  "source": {
    "blob": "af334fb1032352966ab6ced2c4e4a9d1d87b2bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3c2c1e8cd29768f358b34822f01862a6dfc82e411c46c60de939d33f2be58d5",
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

Occurrence: `result:0d083a79-1eec-835a-6f57-70378742f1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FinitePresentation.fg_ker [Module.Finite R M]
    [h : Module.FinitePresentation R N] (l : M →ₗ[R] N) (hl : Function.Surjective l) :
    (LinearMap.ker l).FG := by
  classical
  obtain ⟨s, hs, hs'⟩ := h
  have H : Function.Surjective (Finsupp.linearCombination R ((↑) : s → N)) :=
    LinearMap.range_eq_top.mp
      (by rw [range_linearCombination, Subtype.range_val, ← hs]; rfl)
  obtain ⟨f, hf⟩ : ∃ f : (s →₀ R) →ₗ[R] M, l ∘ₗ f = (Finsupp.linearCombination R Subtype.val) := by
    choose f hf using show _ from hl
    exact ⟨Finsupp.linearCombination R (fun i ↦ f i), by ext; simp [hf]⟩
  have : (LinearMap.ker l).map (LinearMap.range f).mkQ = ⊤ := by
    rw [← top_le_iff]
    rintro x -
    obtain ⟨x, rfl⟩ := Submodule.mkQ_surjective _ x
    obtain ⟨y, hy⟩ := H (l x)
    rw [← hf, LinearMap.comp_apply, eq_comm, ← sub_eq_zero, ← map_sub] at hy
    exact ⟨_, hy, by simp⟩
  apply Submodule.fg_of_fg_map_of_fg_inf_ker (LinearMap.range f).mkQ
  · rw [this]
    exact Module.Finite.fg_top
  · rw [Submodule.ker_mkQ, inf_comm, ← Submodule.map_comap_eq, ← LinearMap.ker_comp, hf]
    exact hs'.map f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinitePresentation/Variantf69801bec48fb7648f4c601ed27bca9f15041b64d402cdda5dc92665a053e6e3.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af334fb1032352966ab6ced2c4e4a9d1d87b2bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
