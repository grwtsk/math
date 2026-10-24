# coeff_p_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab6fff5e-bd96-2ccd-1cc9-d38437d6de6a",
  "kind": "theorem",
  "lexical_name": "coeff_p_pow_eq_zero",
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
  "slug": "coeff-p-pow-eq-zero--1abb832e7263c1add18fad7d",
  "source": {
    "blob": "dc6f15db3056ba9bb31cd33481b1f6c52679ff29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1abb832e7263c1add18fad7d582df1f5c732c555d121fa4ad55ea1768a354bcf",
  "verification": {
    "reference": "docs/verification/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab6fff5e-bd96-2ccd-1cc9-d38437d6de6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_p_pow_eq_zero [CharP R p] {i j : ℕ} (hj : j ≠ i) : ((p : 𝕎 R) ^ i).coeff j = 0 := by
  induction' i with i hi generalizing j
  · rw [Nat.zero_eq, pow_zero, one_coeff_eq_of_pos]
    exact Nat.pos_of_ne_zero hj
  · rw [pow_succ', ← frobenius_verschiebung, coeff_frobenius_charP]
    cases j
    · rw [verschiebung_coeff_zero, zero_pow]
      exact Nat.Prime.pos hp.out
    · rw [verschiebung_coeff_succ, hi, zero_pow]
      · exact Nat.Prime.pos hp.out
      · exact ne_of_apply_ne (fun j : ℕ => j.succ) hj
#align witt_vector.coeff_p_pow_eq_zero WittVector.coeff_p_pow_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Identities/Variant8a83cf805deebe1f508a9c1e5831e44d589ee9c31203b3a325b8e0ff75518565.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc6f15db3056ba9bb31cd33481b1f6c52679ff29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
