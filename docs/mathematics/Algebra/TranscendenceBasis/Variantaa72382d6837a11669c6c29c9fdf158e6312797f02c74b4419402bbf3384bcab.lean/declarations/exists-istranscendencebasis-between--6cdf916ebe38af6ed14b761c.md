# exists_isTranscendenceBasis_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce774d7e-5a17-107a-4f75-6ce95e7ac44e",
  "kind": "theorem",
  "lexical_name": "exists_isTranscendenceBasis_between",
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
  "slug": "exists-istranscendencebasis-between--6cdf916ebe38af6ed14b761c",
  "source": {
    "blob": "c8a521893a6cb8b186c4b879222c1e453b3645c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 385,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cdf916ebe38af6ed14b761c10ebebc851a2a7683e9a548d0a1c1db7636cce40",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce774d7e-5a17-107a-4f75-6ce95e7ac44e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isTranscendenceBasis_between [NoZeroDivisors A] (s t : Set A) (hst : s ⊆ t)
    (hs : AlgebraicIndepOn R id s) [ht : Algebra.IsAlgebraic (adjoin R t) A] :
    ∃ u, s ⊆ u ∧ u ⊆ t ∧ IsTranscendenceBasis R ((↑) : u → A) := by
  have := ht.nontrivial
  have := Subtype.val_injective (p := (· ∈ adjoin R t)).nontrivial
  have := (isDomain_iff_noZeroDivisors_and_nontrivial A).mpr ⟨inferInstance, inferInstance⟩
  have := (faithfulSMul_iff_algebraMap_injective R A).mpr hs.algebraMap_injective
  rw [← matroid_spanning_iff] at ht
  rw [← matroid_indep_iff] at hs
  have ⟨B, base, hsB, hBt⟩ := hs.exists_isBase_subset_spanning ht hst
  exact ⟨B, hsB, hBt, base⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8a521893a6cb8b186c4b879222c1e453b3645c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
