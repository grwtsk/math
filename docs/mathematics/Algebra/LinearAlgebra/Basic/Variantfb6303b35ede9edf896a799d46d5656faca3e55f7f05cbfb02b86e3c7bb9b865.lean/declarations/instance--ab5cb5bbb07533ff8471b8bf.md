# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f89e48c0748b0c2da13dd9b77949d38236f6129d1c236c4c4cb70ae12e2abee",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ab5cb5bbb07533ff8471b8bf",
  "source": {
    "blob": "1d9fcebc259a8e3954bf5d670cdccf87863cd6e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 829,
    "line": 805,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab5cb5bbb07533ff8471b8bf8ed527a001c3bf43a17766514c23a4d966d6db54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f89e48c0748b0c2da13dd9b77949d38236f6129d1c236c4c4cb70ae12e2abee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 805–829.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Nonempty σ] [Nontrivial R] : Nontrivial (Subalgebra R (MvPowerSeries σ R)) :=
  ⟨⟨⊥, ⊤, by
      classical
      rw [Ne, SetLike.ext_iff, not_forall]
      inhabit σ
      refine ⟨X default, ?_⟩
      simp only [Algebra.mem_bot, not_exists, Set.mem_range, iff_true, Algebra.mem_top]
      intro x
      rw [MvPowerSeries.ext_iff, not_forall]
      refine ⟨Finsupp.single default 1, ?_⟩
      simp [algebraMap_apply, coeff_C]⟩⟩

end Algebra


end MvPowerSeries

namespace MvPolynomial

open Finsupp

variable {σ : Type*} {R : Type*} [CommSemiring R] (φ ψ : MvPolynomial σ R)

/-- The natural inclusion from multivariate polynomials into multivariate formal power series. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean#L805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9fcebc259a8e3954bf5d670cdccf87863cd6e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
