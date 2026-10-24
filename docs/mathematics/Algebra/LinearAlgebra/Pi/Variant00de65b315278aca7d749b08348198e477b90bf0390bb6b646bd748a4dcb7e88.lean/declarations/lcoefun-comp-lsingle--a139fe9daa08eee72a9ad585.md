# lcoeFun_comp_lsingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb0dbc6e-712d-f44a-691f-8d0509d68cf4",
  "kind": "theorem",
  "lexical_name": "lcoeFun_comp_lsingle",
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
  "slug": "lcoefun-comp-lsingle--a139fe9daa08eee72a9ad585",
  "source": {
    "blob": "ff38aa4dfd90a84c55cbf11f917e0296d9314d38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a139fe9daa08eee72a9ad585e1525515008cd4885f739d37e8a196c878a208e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0dbc6e-712d-f44a-691f-8d0509d68cf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem lcoeFun_comp_lsingle [DecidableEq α] (x : α) :
    lcoeFun ∘ₗ lsingle x = .single R (fun _ ↦ M) x := by
  ext; simp [single_eq_pi_single]

end Finsupp

variable {R M N P : Type*}
variable [Semiring R] [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N]
variable [AddCommMonoid P] [Module R P]

open Finsupp

namespace LinearMap

section prodOfFinsuppNat

open Function

variable (f : P × M →ₗ[R] M)

/-- A linear map from a product module `P × M` to `M` induces a linear map from `P^(ℕ)` to `M`,
where the `n`th component is given by `P —ι₁→ P × M` composed with `P × M —f→ M —ι₂→ P × M`
`n` times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant00de65b315278aca7d749b08348198e477b90bf0390bb6b646bd748a4dcb7e88.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff38aa4dfd90a84c55cbf11f917e0296d9314d38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
