# isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfaf8e5e-60af-b729-98fe-dfc5ab6e654f",
  "kind": "lemma",
  "lexical_name": "isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn",
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
  "slug": "isequivalent-deriv-rpow-p-mul-one-sub-smoothingfn--ae7a65eb71fa5cc8f79f6480",
  "source": {
    "blob": "470ce2f8aaada3e7158edb7db4dcdb2e3543282e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 861,
    "line": 838,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae7a65eb71fa5cc8f79f64803aa06ec26338fc7caf02b4120d34a0e2e7d1957b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfaf8e5e-60af-b729-98fe-dfc5ab6e654f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn {p : ℝ} (hp : p ≠ 0) :
    deriv (fun z => z ^ p * (1 - ε z)) ~[atTop] fun z => p * z ^ (p-1) := calc
  deriv (fun z => z ^ p * (1 - ε z))
    =ᶠ[atTop] fun z => p * z ^ (p-1) * (1 - ε z) + z^(p-1) / (log z ^ 2) :=
        eventually_deriv_rpow_p_mul_one_sub_smoothingFn p
  _ ~[atTop] fun z => p * z ^ (p-1) := by
        refine IsEquivalent.add_isLittleO ?one ?two
        case one => calc
          (fun z => p * z ^ (p-1) * (1 - ε z)) ~[atTop] fun z => p * z ^ (p-1) * 1 :=
                IsEquivalent.mul IsEquivalent.refl isEquivalent_one_sub_smoothingFn_one
          _ = fun z => p * z ^ (p-1) := by ext; ring
        case two => calc
          (fun z => z ^ (p-1) / (log z ^ 2)) =o[atTop] fun z => z ^ (p-1) / 1 := by
                      simp_rw [div_eq_mul_inv]
                      refine IsBigO.mul_isLittleO (isBigO_refl _ _)
                        (IsLittleO.inv_rev ?_ (by simp))
                      rw [isLittleO_const_left]
                      refine Or.inr <| Tendsto.comp tendsto_norm_atTop_atTop ?_
                      exact Tendsto.comp (g := fun z => z ^ 2)
                        (tendsto_pow_atTop (by norm_num)) tendsto_log_atTop
          _ = fun z => z ^ (p-1) := by ext; simp
          _ =Θ[atTop] fun z => p * z ^ (p-1) := by
                      exact IsTheta.const_mul_right hp <| isTheta_refl _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470ce2f8aaada3e7158edb7db4dcdb2e3543282e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
