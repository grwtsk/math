# Monic.irreducible_iff_degree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0870a578c06f970a47356499881cd7f10435cdeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 894,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:744e716d-6348-a09d-2502-a088ca06d721",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:383581ea-cb04-e232-80df-b9aa3badd2d3",
  "kind": "theorem",
  "lexical_name": "Monic.irreducible_iff_degree_lt",
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
  "slug": "monic-irreducible-iff-degree-lt--87289b26bc992ebc76ef9b5e",
  "source": {
    "blob": "0870a578c06f970a47356499881cd7f10435cdeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 915,
    "line": 894,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87289b26bc992ebc76ef9b5e0bb00f12173ad4e85fbc94e8bc093f9b66084895",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:383581ea-cb04-e232-80df-b9aa3badd2d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–915.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monic.irreducible_iff_degree_lt (p_monic : Monic p) (p_1 : p ≠ 1) :
    Irreducible p ↔ ∀ q, degree q ≤ ↑(p.natDegree / 2) → q ∣ p → IsUnit q := by
  simp only [p_monic.irreducible_iff_lt_natDegree_lt p_1, Finset.mem_Ioc, and_imp,
    natDegree_pos_iff_degree_pos, natDegree_le_iff_degree_le]
  constructor
  · rintro h q deg_le dvd
    by_contra q_unit
    have := degree_pos_of_not_isUnit_of_dvd_monic p_monic q_unit dvd
    have hu := p_monic.isUnit_leadingCoeff_of_dvd dvd
    refine (h _ (monic_of_isUnit_leadingCoeff_inv_smul hu) ?_ ?_ (dvd_trans ?_ dvd)).elim
    · rwa [degree_smul_of_smul_regular _ (IsSMulRegular.all _)]
    · rwa [degree_smul_of_smul_regular _ (IsSMulRegular.all _)]
    · rw [Units.smul_def, Polynomial.smul_eq_C_mul, (isUnit_C.mpr (Units.isUnit _)).mul_left_dvd]
  · rintro h q _ deg_pos deg_le dvd
    exact deg_pos.ne' <| degree_eq_zero_of_isUnit (h q deg_le dvd)

end CommRing

section

variable {A B : Type*} [CommRing A] [CommRing B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variante5815d23fc2708bb154206034e61070854fddcb3708cedbd1ce3e7e2821c4116.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0870a578c06f970a47356499881cd7f10435cdeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
