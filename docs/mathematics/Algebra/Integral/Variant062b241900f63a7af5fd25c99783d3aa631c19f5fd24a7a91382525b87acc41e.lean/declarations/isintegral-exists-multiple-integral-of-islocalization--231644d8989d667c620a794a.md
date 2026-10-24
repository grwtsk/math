# IsIntegral.exists_multiple_integral_of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df1e8870497e6d04a682659ce876b190d3884b6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a348881d-02ab-f8db-dd79-7ecbe4b67b43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:868771f1-478d-2198-0f44-42d6c47588eb",
  "kind": "theorem",
  "lexical_name": "IsIntegral.exists_multiple_integral_of_isLocalization",
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
  "slug": "isintegral-exists-multiple-integral-of-islocalization--231644d8989d667c620a794a",
  "source": {
    "blob": "df1e8870497e6d04a682659ce876b190d3884b6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 286,
    "path": "GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:231644d8989d667c620a794a873fad3e9686c3e52eeffcb79557d4f84d2b6ed9",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868771f1-478d-2198-0f44-42d6c47588eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegral.exists_multiple_integral_of_isLocalization [Algebra Rₘ S] [IsScalarTower R Rₘ S]
    (x : S) (hx : IsIntegral Rₘ x) : ∃ m : M, IsIntegral R (m • x) := by
  cases' subsingleton_or_nontrivial Rₘ with _ nontriv <;> skip
  · haveI := (_root_.algebraMap Rₘ S).codomain_trivial
    exact ⟨1, Polynomial.X, Polynomial.monic_X, Subsingleton.elim _ _⟩
  obtain ⟨p, hp₁, hp₂⟩ := hx
  -- Porting note: obtain doesn't support side goals
  have :=
    lifts_and_natDegree_eq_and_monic (IsLocalization.scaleRoots_commonDenom_mem_lifts M p ?_) ?_
  obtain ⟨p', hp'₁, -, hp'₂⟩ := this
  · refine' ⟨IsLocalization.commonDenom M p.support p.coeff, p', hp'₂, _⟩
    rw [IsScalarTower.algebraMap_eq R Rₘ S, ← Polynomial.eval₂_map, hp'₁, Submonoid.smul_def,
      Algebra.smul_def, IsScalarTower.algebraMap_apply R Rₘ S]
    exact Polynomial.scaleRoots_eval₂_eq_zero _ hp₂
  · rw [hp₁.leadingCoeff]
    exact one_mem _
  · rwa [Polynomial.monic_scaleRoots_iff]
#align is_integral.exists_multiple_integral_of_is_localization IsIntegral.exists_multiple_integral_of_isLocalization

end IsIntegral

variable {A K : Type*} [CommRing A] [IsDomain A]

namespace IsIntegralClosure

variable (A)
variable {L : Type*} [Field K] [Field L] [Algebra A K] [Algebra A L] [IsFractionRing A K]

variable (C : Type*) [CommRing C] [IsDomain C] [Algebra C L] [IsIntegralClosure C A L]

variable [Algebra A C] [IsScalarTower A C L]

open Algebra

/-- If the field `L` is an algebraic extension of the integral domain `A`,
the integral closure `C` of `A` in `L` has fraction field `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1e8870497e6d04a682659ce876b190d3884b6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
