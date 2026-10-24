# hasseDeriv_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac05d707-aa93-c170-992b-b82265e37e7f",
  "kind": "theorem",
  "lexical_name": "hasseDeriv_coeff",
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
  "slug": "hassederiv-coeff--c999f85dee8e309e9278cac6",
  "source": {
    "blob": "588405804dd0d56c5a7cbd6067271b6dbeb1bc00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c999f85dee8e309e9278cac6df286194971e7cc4b11e12e0fcd528b40eca546d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac05d707-aa93-c170-992b-b82265e37e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasseDeriv_coeff (n : ℕ) :
    (hasseDeriv k f).coeff n = (n + k).choose k * f.coeff (n + k) := by
  rw [hasseDeriv_apply, coeff_sum, sum_def, Finset.sum_eq_single (n + k), coeff_monomial]
  · simp only [if_true, add_tsub_cancel_right, eq_self_iff_true]
  · intro i _hi hink
    rw [coeff_monomial]
    by_cases hik : i < k
    · simp only [Nat.choose_eq_zero_of_lt hik, ite_self, Nat.cast_zero, zero_mul]
    · push_neg at hik
      rw [if_neg]
      contrapose! hink
      exact (tsub_eq_iff_eq_add_of_le hik).mp hink
  · intro h
    simp only [notMem_support_iff.mp h, monomial_zero_right, mul_zero, coeff_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant663d64696dda52a57a30d0fec4fb2a5505c7c49dfefb4a9e28b69d8709b95fce.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `588405804dd0d56c5a7cbd6067271b6dbeb1bc00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
