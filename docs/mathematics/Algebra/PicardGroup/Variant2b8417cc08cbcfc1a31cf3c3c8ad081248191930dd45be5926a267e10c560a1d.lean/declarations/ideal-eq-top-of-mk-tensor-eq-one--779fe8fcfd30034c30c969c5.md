# Ideal.eq_top_of_mk_tensor_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:252873c8-20b9-c839-1050-c7a5a6899413",
  "kind": "theorem",
  "lexical_name": "Ideal.eq_top_of_mk_tensor_eq_one",
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
  "slug": "ideal-eq-top-of-mk-tensor-eq-one--779fe8fcfd30034c30c969c5",
  "source": {
    "blob": "6b4966598f5e62181e195c60e1f0d3fd47894705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 940,
    "line": 926,
    "path": "GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:779fe8fcfd30034c30c969c57b036c1abc04d21095867922a23f6e556c9c6f38",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:252873c8-20b9-c839-1050-c7a5a6899413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–940.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.eq_top_of_mk_tensor_eq_one [IsFractionRing R R] (I J : Ideal R)
    [Module.Invertible R I] [Module.Invertible R J] (h : Pic.mk R (I ⊗[R] J) = 1) :
    I = ⊤ ∧ J = ⊤ := by
  have ⟨e⟩ := mk_eq_one_iff.mp h
  have e := e.symm ≪≫ₗ Submodule.LinearDisjoint.mulMap
    (.of_left_le_one_of_flat I J <| le_top.trans one_eq_top.ge)
  have : IsUnit (e 1 : R) := IsFractionRing.self_iff_nonZeroDivisors_le_isUnit.mp ‹_› <|
      IsRegular.mem_nonZeroDivisors <| isRightRegular_iff_isRegular.mp <| by
    rw [IsRightRegular]
    convert! Subtype.val_injective.comp e.injective using 2
    rw [← smul_eq_mul, ← Submodule.coe_smul, ← map_smul, smul_eq_mul, mul_one, Function.comp_apply]
  constructor <;> refine eq_top_of_isUnit_mem _ ?_ this
  exacts [mul_le_left (e 1).2, mul_le_right (e 1).2]

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4966598f5e62181e195c60e1f0d3fd47894705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
