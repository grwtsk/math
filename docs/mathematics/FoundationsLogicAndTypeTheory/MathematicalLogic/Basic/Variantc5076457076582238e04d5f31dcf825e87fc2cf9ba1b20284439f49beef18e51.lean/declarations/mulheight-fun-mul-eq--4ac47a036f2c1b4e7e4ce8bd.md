# mulHeight_fun_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d736f410-7302-096e-2906-5377ce100c47",
  "kind": "lemma",
  "lexical_name": "mulHeight_fun_mul_eq",
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
  "slug": "mulheight-fun-mul-eq--4ac47a036f2c1b4e7e4ce8bd",
  "source": {
    "blob": "546a7c78395eb14eb2394b2fc07e9231de189cc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 711,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac47a036f2c1b4e7e4ce8bd22b3c83ec8928f38a8e758c6db9a025f2bbcee82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d736f410-7302-096e-2906-5377ce100c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulHeight_fun_mul_eq {x : ι → K} (hx : x ≠ 0) {y : ι' → K} (hy : y ≠ 0) :
    mulHeight (fun a : ι × ι' ↦ x a.1 * y a.2) = mulHeight x * mulHeight y := by
  have hxy : (fun a : ι × ι' ↦ x a.1 * y a.2) ≠ 0 := by
    obtain ⟨i, hi⟩ := ne_iff.mp hx
    obtain ⟨j, hj⟩ := ne_iff.mp hy
    exact ne_iff.mpr ⟨⟨i, j⟩, mul_ne_zero hi hj⟩
  rw [mulHeight_eq hx, mulHeight_eq hy, mulHeight_eq hxy, mul_mul_mul_comm, ← Multiset.prod_map_mul,
    ← finprod_mul_distrib
        (hasFiniteMulSupport_iSup_nonarchAbsVal hx) (hasFiniteMulSupport_iSup_nonarchAbsVal hy)]
  congr <;> ext1 v
  · exact Real.iSup_fun_mul_eq_iSup_mul_iSup_of_nonneg v x y
  · exact Real.iSup_fun_mul_eq_iSup_mul_iSup_of_nonneg v.val x y

open Real in
/-- The logarithmic height of the "multiplication table" `fun (i, j) ↦ x i * y j`
is the sum of the logarithmic heights of `x` and `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5076457076582238e04d5f31dcf825e87fc2cf9ba1b20284439f49beef18e51.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `546a7c78395eb14eb2394b2fc07e9231de189cc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
