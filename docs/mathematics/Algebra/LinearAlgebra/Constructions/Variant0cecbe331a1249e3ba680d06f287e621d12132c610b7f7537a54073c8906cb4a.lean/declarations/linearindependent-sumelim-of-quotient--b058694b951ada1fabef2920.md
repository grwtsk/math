# LinearIndependent.sumElim_of_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:494915eb-d5ba-3395-1ca6-90be66da846d",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.sumElim_of_quotient",
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
  "slug": "linearindependent-sumelim-of-quotient--b058694b951ada1fabef2920",
  "source": {
    "blob": "2616590f7387c5ef7ded451ecd988c1ac27c61a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b058694b951ada1fabef29207596ee7fe71cb1fb7013921ed8496f3ef26e0fe9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:494915eb-d5ba-3395-1ca6-90be66da846d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.sumElim_of_quotient
    {M' : Submodule R M} {ι₁ ι₂} {f : ι₁ → M'} (hf : LinearIndependent R f) (g : ι₂ → M)
    (hg : LinearIndependent R (Submodule.Quotient.mk (p := M') ∘ g)) :
    LinearIndependent R (Sum.elim (f · : ι₁ → M) g) := by
  refine .sum_type (hf.map' M'.subtype M'.ker_subtype) (.of_comp M'.mkQ hg) ?_
  refine disjoint_def.mpr fun x h₁ h₂ ↦ ?_
  have : x ∈ M' := span_le.mpr (Set.range_subset_iff.mpr fun i ↦ (f i).prop) h₁
  obtain ⟨c, rfl⟩ := Finsupp.mem_span_range_iff_exists_finsupp.mp h₂
  simp_rw [← Quotient.mk_eq_zero, ← mkQ_apply, map_finsuppSum, map_smul, mkQ_apply] at this
  rw [linearIndependent_iff.mp hg _ this, Finsupp.sum_zero_index]

@[deprecated (since := "2025-02-21")]
alias LinearIndependent.sum_elim_of_quotient := LinearIndependent.sumElim_of_quotient

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2616590f7387c5ef7ded451ecd988c1ac27c61a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
