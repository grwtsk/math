# eq_bot_of_generator_maximal_submoduleImage_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e843f42-5ab8-1061-b7cf-dc55cc813088",
  "kind": "theorem",
  "lexical_name": "eq_bot_of_generator_maximal_submoduleImage_eq_zero",
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
  "slug": "eq-bot-of-generator-maximal-submoduleimage-eq-zero--6f4cd72d07e54806ff689fa9",
  "source": {
    "blob": "5ec6de0d580be11865a9728c9e1c9a1f816900e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f4cd72d07e54806ff689fa98f80fb720b859f38c379c639c829337a30e5be75",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e843f42-5ab8-1061-b7cf-dc55cc813088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_of_generator_maximal_submoduleImage_eq_zero {N O : Submodule R M} (b : Basis ι R O)
    (hNO : N ≤ O) {ϕ : O →ₗ[R] R} (hϕ : ∀ ψ : O →ₗ[R] R, ¬ϕ.submoduleImage N < ψ.submoduleImage N)
    [(ϕ.submoduleImage N).IsPrincipal] (hgen : generator (ϕ.submoduleImage N) = 0) : N = ⊥ := by
  rw [Submodule.eq_bot_iff]
  intro x hx
  refine (mk_eq_zero _ _).mp (show (⟨x, hNO hx⟩ : O) = 0 from b.ext_elem fun i ↦ ?_)
  rw [(eq_bot_iff_generator_eq_zero _).mpr hgen] at hϕ
  rw [LinearEquiv.map_zero, Finsupp.zero_apply]
  refine (Submodule.eq_bot_iff _).mp (not_bot_lt_iff.1 <| hϕ (Finsupp.lapply i ∘ₗ ↑b.repr)) _ ?_
  exact (LinearMap.mem_submoduleImage_of_le hNO).mpr ⟨x, hx, rfl⟩

end Ring

section IsDomain

variable {ι : Type*} {R : Type*} [CommRing R] [IsDomain R]
variable {M : Type*} [AddCommGroup M] [Module R M] {b : ι → M}

open Submodule.IsPrincipal Set Submodule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec6de0d580be11865a9728c9e1c9a1f816900e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
