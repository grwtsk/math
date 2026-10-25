# sqrtUp_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61ca27f8-d3ff-12bf-2fc5-0b183e86de0e",
  "kind": "theorem",
  "lexical_name": "sqrtUp_nonneg",
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
  "slug": "sqrtup-nonneg--aedfcb145afb92076d609426",
  "source": {
    "blob": "7a11771e83344217b96835a985a05ee76e480373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 998,
    "line": 973,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aedfcb145afb92076d6094266b92c542f6f3247174457d8c169e75095b397538",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61ca27f8-d3ff-12bf-2fc5-0b183e86de0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 973–998.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtUp_nonneg (d : Dyadic) (prec : Int) (hd : 0 ≤ d.mantissa) :
    0 ≤ (sqrtUp d prec).mantissa := by
  simp only [sqrtUp, not_lt.mpr hd, ↓reduceIte]
  set shift := d.exponent - 2 * prec
  have hm_nonneg : 0 ≤ (if shift ≥ 0 then
      d.mantissa * (pow2Nat shift.toNat : Int)
    else
      d.mantissa / (pow2Nat (-shift).toNat : Int)) := by
    by_cases! hsh : shift ≥ 0
    · simp only [hsh, ↓reduceIte]
      exact sqrt_scaled_shift_nonneg hd hsh
    · simp only [not_le.mpr hsh, ↓reduceIte]
      exact Int.ediv_nonneg hd (Int.natCast_nonneg _)
  set m := (if shift ≥ 0 then
      d.mantissa * (pow2Nat shift.toNat : Int)
    else
      d.mantissa / (pow2Nat (-shift).toNat : Int))
  set s := intSqrt m
  by_cases hperfect : s * s = m
  · simp only [hperfect, ↓reduceIte]
    exact intSqrt_nonneg hm_nonneg
  · simp only [hperfect, ↓reduceIte]
    calc 0 ≤ s := intSqrt_nonneg hm_nonneg
      _ ≤ s + 1 := by omega

/-- sqrtDown.toRat ≤ sqrtUp.toRat for non-negative inputs -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean#L973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a11771e83344217b96835a985a05ee76e480373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
