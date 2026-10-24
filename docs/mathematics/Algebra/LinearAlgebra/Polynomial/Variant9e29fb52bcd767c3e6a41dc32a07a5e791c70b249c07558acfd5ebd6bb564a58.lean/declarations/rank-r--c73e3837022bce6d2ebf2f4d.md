# rank_R

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f755832b-ba48-b922-963a-af210c1e5481",
  "kind": "theorem",
  "lexical_name": "rank_R",
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
  "slug": "rank-r--c73e3837022bce6d2ebf2f4d",
  "source": {
    "blob": "9ddeda3f5caa35dfcdaef82cdeaf833735f59427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c73e3837022bce6d2ebf2f4d6df118285e0570f61f91c450c28330340f0adf21",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f755832b-ba48-b922-963a-af210c1e5481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_R [Fintype σ] : Module.rank K (R σ K) = Fintype.card (σ → K) :=
  calc
    Module.rank K (R σ K) =
        Module.rank K (↥{ s : σ →₀ ℕ | ∀ n : σ, s n ≤ Fintype.card K - 1 } →₀ K) :=
      LinearEquiv.rank_eq
        (Finsupp.supportedEquivFinsupp { s : σ →₀ ℕ | ∀ n : σ, s n ≤ Fintype.card K - 1 })
    _ = #{ s : σ →₀ ℕ | ∀ n : σ, s n ≤ Fintype.card K - 1 } := by rw [rank_finsupp_self']
    _ = #{ s : σ → ℕ | ∀ n : σ, s n < Fintype.card K } := by
      refine Quotient.sound ⟨Equiv.subtypeEquiv Finsupp.equivFunOnFinite fun f => ?_⟩
      refine forall_congr' fun n => le_tsub_iff_right ?_
      exact Fintype.card_pos_iff.2 ⟨0⟩
    _ = #(σ → { n // n < Fintype.card K }) :=
      (@Equiv.subtypePiEquivPi σ (fun _ => ℕ) fun _ n => n < Fintype.card K).cardinal_eq
    _ = #(σ → Fin (Fintype.card K)) :=
      (Equiv.arrowCongr (Equiv.refl σ) Fin.equivSubtype.symm).cardinal_eq
    _ = #(σ → K) := (Equiv.arrowCongr (Equiv.refl σ) (Fintype.equivFin K).symm).cardinal_eq
    _ = Fintype.card (σ → K) := Cardinal.mk_fintype _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant9e29fb52bcd767c3e6a41dc32a07a5e791c70b249c07558acfd5ebd6bb564a58.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddeda3f5caa35dfcdaef82cdeaf833735f59427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
