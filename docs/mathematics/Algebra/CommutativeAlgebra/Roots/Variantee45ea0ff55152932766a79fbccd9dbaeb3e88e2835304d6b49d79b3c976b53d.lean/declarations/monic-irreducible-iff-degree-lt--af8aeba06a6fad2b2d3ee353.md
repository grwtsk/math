# Monic.irreducible_iff_degree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7481d1a5-f854-dce1-319e-c63242cbbf50",
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
  "slug": "monic-irreducible-iff-degree-lt--af8aeba06a6fad2b2d3ee353",
  "source": {
    "blob": "bfdf150d98d8ea9f3a190f4cde7d624067aaac86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 715,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8aeba06a6fad2b2d3ee353d2af4cde2b972bd0b05c97a43d9467de3d01d856",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7481d1a5-f854-dce1-319e-c63242cbbf50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 715–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monic.irreducible_iff_degree_lt {p : R[X]} (p_monic : Monic p) (p_1 : p ≠ 1) :
    Irreducible p ↔ ∀ q, degree q ≤ ↑(p.natDegree / 2) → q ∣ p → IsUnit q := by
  simp only [p_monic.irreducible_iff_lt_natDegree_lt p_1, Finset.mem_Ioc, and_imp,
    natDegree_pos_iff_degree_pos, natDegree_le_iff_degree_le]
  constructor
  · rintro h q deg_le dvd
    by_contra q_unit
    have := degree_pos_of_not_isUnit_of_dvd_monic p_monic q_unit dvd
    have hu := p_monic.isUnit_leadingCoeff_of_dvd dvd
    refine (h _ (monic_of_isUnit_leadingCoeff_inv_smul hu) ?_ ?_ (dvd_trans ?_ dvd)).elim
    · rwa [degree_smul_of_smul_regular _ (isSMulRegular_of_group _)]
    · rwa [degree_smul_of_smul_regular _ (isSMulRegular_of_group _)]
    · rw [Units.smul_def, Polynomial.smul_eq_C_mul, (isUnit_C.mpr (Units.isUnit _)).mul_left_dvd]
  · rintro h q _ deg_pos deg_le dvd
    exact deg_pos.ne' <| degree_eq_zero_of_isUnit (h q deg_le dvd)

end CommRing

section

variable {A B : Type*} [CommRing A] [CommRing B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean#L715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdf150d98d8ea9f3a190f4cde7d624067aaac86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
