# isLittleO_exp_neg_mul_sq_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d21dadb-98fd-0921-862a-8ad1553beec1",
  "kind": "theorem",
  "lexical_name": "isLittleO_exp_neg_mul_sq_cocompact",
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
  "slug": "islittleo-exp-neg-mul-sq-cocompact--d7b274a5240cd5a7c76840f7",
  "source": {
    "blob": "031cd32f6e7660a61b7c6ac3977e3bcf76414ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 584,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b274a5240cd5a7c76840f775a65f2851dcb7c5114e055d1a570e1264acee2f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d21dadb-98fd-0921-862a-8ad1553beec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_exp_neg_mul_sq_cocompact {a : ℂ} (ha : 0 < a.re) (s : ℝ) :
    (fun x : ℝ => Complex.exp (-a * (x : ℂ) ^ 2)) =o[cocompact ℝ] fun x : ℝ => |x| ^ s := by
  rw [← isLittleO_norm_left]
  simp_rw [norm_cexp_neg_mul_sq]
  apply isLittleO_of_tendsto'
  · refine' Eventually.filter_mono cocompact_le_cofinite _
    refine' (eventually_cofinite_ne 0).mp (eventually_of_forall fun x hx h => _)
    exact ((rpow_pos_of_pos (abs_pos.mpr hx) _).ne' h).elim
  · refine'
      Tendsto.congr' (Eventually.filter_mono cocompact_le_cofinite _)
        (tendsto_zero_iff_norm_tendsto_zero.mp <|
          tendsto_rpow_abs_mul_exp_neg_mul_sq_cocompact ha (-s))
    refine' (eventually_cofinite_ne 0).mp (eventually_of_forall fun x _ => _)
    dsimp only
    rw [norm_mul, norm_of_nonneg (rpow_nonneg_of_nonneg (abs_nonneg _) _), mul_comm,
      rpow_neg (abs_nonneg x), div_eq_mul_inv, norm_of_nonneg (exp_pos _).le]
#align is_o_exp_neg_mul_sq_cocompact isLittleO_exp_neg_mul_sq_cocompact

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031cd32f6e7660a61b7c6ac3977e3bcf76414ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
