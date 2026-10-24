# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fc55e70-9c27-d704-18ac-f93a27fc697b",
  "kind": "theorem",
  "lexical_name": "trans",
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
  "slug": "trans--b78caddbec93c8b705c6873e",
  "source": {
    "blob": "450cd215be59e2df358b33689d980fe3db798c67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78caddbec93c8b705c6873eec942cd2f916166a25c4f2982e632637584624dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fc55e70-9c27-d704-18ac-f93a27fc697b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans [Flat R S] [Flat S M] : Flat R M := by
  rw [Flat.iff_lTensor_injectiveₛ]
  introv
  rw [← coe_lTensor (A := S), ← EquivLike.injective_comp (cancelBaseChange R S S _ _),
    ← LinearEquiv.coe_coe, ← LinearMap.coe_comp, lTensor_comp_cancelBaseChange,
    LinearMap.coe_comp, LinearEquiv.coe_coe, EquivLike.comp_injective]
  iterate 2 apply Flat.lTensor_preserves_injective_linearMap
  exact Subtype.val_injective

@[deprecated (since := "2024-11-03")] alias comp := trans

end Composition

section BaseChange

/-! ### Base change

Let `R` be a ring, `M` a flat `R`-module and `S` an `R`-algebra, then
`S ⊗[R] M` is a flat `S`-module. This is a special case of `Module.Flat.instTensorProduct`.

-/

variable (R : Type u) (S : Type v) (M : Type w)
  [CommSemiring R] [CommSemiring S] [Algebra R S]
  [AddCommMonoid M] [Module R M]

/-- If `M` is a flat `R`-module and `S` is any `R`-algebra, `S ⊗[R] M` is `S`-flat. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Stability/Variantcd1360e14f9269648805a2c81eddffb7c7dd110a100a55db7a57eef317346443.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450cd215be59e2df358b33689d980fe3db798c67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
