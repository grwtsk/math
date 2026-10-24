# hasDerivAt_Gammaℂ_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:593d0e06-aee6-fb24-e148-397798268bea",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_Gammaℂ_one",
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
  "slug": "hasderivat-gamma-one--d576f9fe035ff726f9e58ddd",
  "source": {
    "blob": "f0c52719ee8db7a33e2c399748d854dd5b12ab6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d576f9fe035ff726f9e58ddda5ddcd91533f1bdf8b03a08c14bd60f977d506a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593d0e06-aee6-fb24-e148-397798268bea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_Gammaℂ_one : HasDerivAt Gammaℂ (-(γ + log (2 * π)) / π) 1 := by
  let f (s : ℂ) : ℂ := 2 * (2 * π) ^ (-s)
  have : HasDerivAt (fun s : ℂ ↦ 2 * (2 * π : ℂ) ^ (-s)) (-log (2 * π) / π) 1 := by
    have := (hasDerivAt_neg' (1 : ℂ)).const_cpow (c := 2 * π)
      (Or.inl (by exact_mod_cast Real.two_pi_pos.ne'))
    refine (this.const_mul 2).congr_deriv ?_
    rw [mul_neg_one, mul_neg, cpow_neg_one, ← div_eq_inv_mul, ← mul_div_assoc,
      mul_div_mul_left _ _ two_ne_zero, neg_div]
  have := this.mul hasDerivAt_Gamma_one
  simp only [f] at this
  rwa [Gamma_one, mul_one, cpow_neg_one, ← div_eq_mul_inv, ← div_div, div_self two_ne_zero,
    mul_comm (1 / _), mul_one_div, ← _root_.add_div, ← neg_add, add_comm] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variant432fe41a4effd39cdcbbc68756c03a08725f222229757b3cad09365ebfcd9748.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c52719ee8db7a33e2c399748d854dd5b12ab6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
