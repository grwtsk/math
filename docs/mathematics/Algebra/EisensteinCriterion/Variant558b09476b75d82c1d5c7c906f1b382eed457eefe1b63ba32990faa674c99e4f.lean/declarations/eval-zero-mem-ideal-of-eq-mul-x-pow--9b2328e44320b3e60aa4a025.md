# eval_zero_mem_ideal_of_eq_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f806763-45b4-5b09-2a9c-bf2a7ff6bde1",
  "kind": "theorem",
  "lexical_name": "eval_zero_mem_ideal_of_eq_mul_X_pow",
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
  "slug": "eval-zero-mem-ideal-of-eq-mul-x-pow--9b2328e44320b3e60aa4a025",
  "source": {
    "blob": "4595df688e0e87c9819338723b41d2770aa9c1e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b2328e44320b3e60aa4a025cbd7d404b2f113955d9d5f5435b7824bde49efd7",
  "verification": {
    "reference": "docs/verification/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f806763-45b4-5b09-2a9c-bf2a7ff6bde1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_zero_mem_ideal_of_eq_mul_X_pow {n : ℕ} {P : Ideal R} {q : R[X]}
    {c : Polynomial (R ⧸ P)} (hq : map (mk P) q = c * X ^ n) (hn0 : 0 < n) : eval 0 q ∈ P := by
  rw [← coeff_zero_eq_eval_zero, ← eq_zero_iff_mem, ← coeff_map, hq,
  --Porting note: why is this lemma required twice?
    coeff_zero_eq_eval_zero, coeff_zero_eq_eval_zero,
    eval_mul, eval_pow, eval_X, zero_pow hn0, mul_zero]
set_option linter.uppercaseLean3 false in
#align polynomial.eisenstein_criterion_aux.eval_zero_mem_ideal_of_eq_mul_X_pow Polynomial.EisensteinCriterionAux.eval_zero_mem_ideal_of_eq_mul_X_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EisensteinCriterion/Variant558b09476b75d82c1d5c7c906f1b382eed457eefe1b63ba32990faa674c99e4f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4595df688e0e87c9819338723b41d2770aa9c1e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
