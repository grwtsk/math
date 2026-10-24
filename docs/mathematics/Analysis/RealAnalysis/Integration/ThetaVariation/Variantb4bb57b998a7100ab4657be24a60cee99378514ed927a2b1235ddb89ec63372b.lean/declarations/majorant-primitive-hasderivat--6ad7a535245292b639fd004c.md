# majorant_primitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0759dbb9-44f9-1130-3785-6bbd438301cf",
  "kind": "theorem",
  "lexical_name": "majorant_primitive_hasDerivAt",
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
  "slug": "majorant-primitive-hasderivat--6ad7a535245292b639fd004c",
  "source": {
    "blob": "d53a2c43c1827ea04aad4b3940771d1767928b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ad7a535245292b639fd004c6ca0bccb6d6a826168835f20a51549895e35d218",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0759dbb9-44f9-1130-3785-6bbd438301cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem majorant_primitive_hasDerivAt (q C x : ℝ) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ -2 * C / Real.sqrt (q * t))
      (q * (C / (q * x * Real.sqrt (q * x)))) x := by
  have hprod : q * x ≠ 0 := (mul_pos hq hx).ne'
  have hsqrt : Real.sqrt (q * x) ≠ 0 := (Real.sqrt_pos.mpr (mul_pos hq hx)).ne'
  have hm : HasDerivAt (fun t : ℝ ↦ q * t) q x := by
    simpa only [id_eq, mul_one] using (hasDerivAt_id x).const_mul q
  apply ((hasDerivAt_const x (-2 * C)).div (hm.sqrt hprod) hsqrt).congr_deriv
  field_simp [hq.ne', hx.ne', hsqrt]
  ring_nf
  rw [Real.sq_sqrt (mul_pos hx hq).le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaVariation/Variantb4bb57b998a7100ab4657be24a60cee99378514ed927a2b1235ddb89ec63372b.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d53a2c43c1827ea04aad4b3940771d1767928b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
