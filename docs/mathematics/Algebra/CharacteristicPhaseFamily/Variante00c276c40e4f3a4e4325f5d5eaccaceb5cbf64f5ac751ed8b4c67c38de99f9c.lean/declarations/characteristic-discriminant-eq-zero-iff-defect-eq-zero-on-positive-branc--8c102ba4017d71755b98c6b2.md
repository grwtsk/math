# characteristic_discriminant_eq_zero_iff_defect_eq_zero_on_positive_branch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b981996b-ffa8-9b07-65c9-794d8b9be629",
  "kind": "theorem",
  "lexical_name": "characteristic_discriminant_eq_zero_iff_defect_eq_zero_on_positive_branch",
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
  "slug": "characteristic-discriminant-eq-zero-iff-defect-eq-zero-on-positive-branc--8c102ba4017d71755b98c6b2",
  "source": {
    "blob": "f9a1b9ab14a9b517709595fb1f00671920ad4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 445,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c102ba4017d71755b98c6b298f04ffbcc4d25df554a4cdb69e751efc60267da",
  "verification": {
    "reference": "docs/verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b981996b-ffa8-9b07-65c9-794d8b9be629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characteristic_discriminant_eq_zero_iff_defect_eq_zero_on_positive_branch
    (χ : ℂ) (hχ : Complex.normSq χ = 1) (hre : 0 ≤ χ.re) :
    characteristicDiscriminant (χ.re : ℂ) = 0 ↔ Complex.normSq (1 - χ) = 0 := by
  rw [characteristic_discriminant_unit_phase_eq_zero_iff_sign χ hχ,
    Complex.normSq_eq_zero, sub_eq_zero]
  constructor
  · rintro (rfl | rfl)
    · rfl
    · norm_num at hre
  · intro h
    exact Or.inl h.symm

/-- A formal counterexample to identifying every repeated-root fiber with defect zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a1b9ab14a9b517709595fb1f00671920ad4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
