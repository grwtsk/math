# baseChange_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c72221bc-0eb2-daeb-9132-e2880940f812",
  "kind": "lemma",
  "lexical_name": "baseChange_span",
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
  "slug": "basechange-span--7c064c19e98034d7357cd74b",
  "source": {
    "blob": "624f1927be2eb375292dafce54cd1d30eba01e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 579,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c064c19e98034d7357cd74b1affcaa0e2431abcb77c8181cc43cd679957a70c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c72221bc-0eb2-daeb-9132-e2880940f812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_span (s : Set M) :
    (span R s).baseChange A = span A (TensorProduct.mk R A M 1 '' s) := by
  simp only [baseChange, map_coe]
  refine le_antisymm (span_le.mpr ?_) (span_mono <| Set.image_subset _ subset_span)
  rintro - ⟨m : M, hm : m ∈ span R s, rfl⟩
  apply span_induction (p := fun m' _ ↦ (1 : A) ⊗ₜ[R] m' ∈ span A (TensorProduct.mk R A M 1 '' s))
    (hx := hm)
  · intro m hm
    exact subset_span ⟨m, hm, rfl⟩
  · simp
  · intro m₁ m₂ _ _ hm₁ hm₂
    rw [tmul_add]
    exact Submodule.add_mem _ hm₁ hm₂
  · intro r m' _ hm'
    rw [tmul_smul, ← one_smul A ((1 : A) ⊗ₜ[R] m'), ← smul_assoc]
    exact smul_mem _ (r • 1) hm'

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624f1927be2eb375292dafce54cd1d30eba01e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
