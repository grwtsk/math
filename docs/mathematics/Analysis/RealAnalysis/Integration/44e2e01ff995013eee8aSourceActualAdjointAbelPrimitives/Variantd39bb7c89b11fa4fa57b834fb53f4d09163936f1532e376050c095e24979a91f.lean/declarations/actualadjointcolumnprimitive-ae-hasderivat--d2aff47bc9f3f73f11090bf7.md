# actualAdjointColumnPrimitive_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75414713-b941-fddc-fb30-d5d74fd85b9b",
  "kind": "theorem",
  "lexical_name": "actualAdjointColumnPrimitive_ae_hasDerivAt",
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
  "slug": "actualadjointcolumnprimitive-ae-hasderivat--d2aff47bc9f3f73f11090bf7",
  "source": {
    "blob": "b81cdac6df9c80ebbe1260f6688800d6981a660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2aff47bc9f3f73f11090bf7b6789281a793c2a791aa2614ab9e5e74bfe48ca1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75414713-b941-fddc-fb30-d5d74fd85b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointColumnPrimitive_ae_hasDerivAt {A l : ℝ} (hA : 1 ≤ A)
    (hl : actualTimeLower A ≤ l) (hlb : l ≤ actualColumnUpper A) :
    ∀ᵐ s, s ∈ uIcc l (actualColumnUpper A) →
      HasDerivAt (actualAdjointColumnPrimitive A)
        (actualLogColumnPrefix A s + actualAdjointColumnPrimitive A s / 2) s := by
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (-r / 2) *
      actualLogColumnPrefix A r) volume l (actualColumnUpper A) :=
    (column_intervalIntegrable hA hl hlb).continuousOn_mul
      (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r / 2))).continuousOn
  filter_upwards [hi.ae_hasDerivAt_integral] with s hs hm
  have hh := (((hasDerivAt_id s).div_const 2).exp).mul
    (hs hm (actualColumnUpper A) (by simp))
  convert hh using 1 <;> try rfl
  simp only [actualAdjointColumnPrimitive, id_eq]
  have hp : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  nlinarith [congrArg (fun x : ℝ => x * actualLogColumnPrefix A s) hp]

/-- The lower time anchor leaves its actual upper trace in covariant integration by parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives/Variantd39bb7c89b11fa4fa57b834fb53f4d09163936f1532e376050c095e24979a91f.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b81cdac6df9c80ebbe1260f6688800d6981a660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
