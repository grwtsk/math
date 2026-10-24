# isPrimitiveRoot_exp_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e883d829-9009-f40f-5627-b78e47ec993c",
  "kind": "theorem",
  "lexical_name": "isPrimitiveRoot_exp_of_coprime",
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
  "slug": "isprimitiveroot-exp-of-coprime--7e7d3877c6024f21c9a35bd7",
  "source": {
    "blob": "a9bba15ea9392f1efdf883c22bde5a2376fade3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e7d3877c6024f21c9a35bd7fe4a9cedf6e1d6b27d78c258c6f81511bd7ebef4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e883d829-9009-f40f-5627-b78e47ec993c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimitiveRoot_exp_of_coprime (i n : ℕ) (h0 : n ≠ 0) (hi : i.Coprime n) :
    IsPrimitiveRoot (exp (2 * π * I * (i / n))) n := by
  rw [IsPrimitiveRoot.iff_def]
  simp only [← exp_nat_mul, exp_eq_one_iff]
  have hn0 : (n : ℂ) ≠ 0 := mod_cast h0
  constructor
  · use i
    field_simp [hn0, mul_comm (i : ℂ), mul_comm (n : ℂ)]
  · simp only [hn0, mul_right_comm _ _ ↑n, mul_left_inj' two_pi_I_ne_zero, Ne, not_false_iff,
      mul_comm _ (i : ℂ), ← mul_assoc _ (i : ℂ), exists_imp, field_simps]
    norm_cast
    rintro l k hk
    conv_rhs at hk => rw [mul_comm, ← mul_assoc]
    have hz : 2 * ↑π * I ≠ 0 := by simp [pi_pos.ne.symm, I_ne_zero]
    field_simp [hz] at hk
    norm_cast at hk
    have : n ∣ i * l := by rw [← Int.natCast_dvd_natCast, hk, mul_comm]; apply dvd_mul_left
    exact hi.symm.dvd_of_dvd_mul_left this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bba15ea9392f1efdf883c22bde5a2376fade3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
