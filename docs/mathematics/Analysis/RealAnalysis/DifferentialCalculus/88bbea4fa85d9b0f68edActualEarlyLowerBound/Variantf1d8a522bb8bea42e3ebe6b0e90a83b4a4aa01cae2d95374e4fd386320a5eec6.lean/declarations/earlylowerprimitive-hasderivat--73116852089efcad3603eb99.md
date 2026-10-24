# earlyLowerPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e06bef3c-daf0-8b6b-9218-c066db7d7235",
  "kind": "theorem",
  "lexical_name": "earlyLowerPrimitive_hasDerivAt",
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
  "slug": "earlylowerprimitive-hasderivat--73116852089efcad3603eb99",
  "source": {
    "blob": "4048b398eb5a2b69b2fc2a66739d4883b8dd26a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variantf1d8a522bb8bea42e3ebe6b0e90a83b4a4aa01cae2d95374e4fd386320a5eec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73116852089efcad3603eb9943f31fd5c42baf42dc542a44d6ef33cf6c969ac5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variantf1d8a522bb8bea42e3ebe6b0e90a83b4a4aa01cae2d95374e4fd386320a5eec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06bef3c-daf0-8b6b-9218-c066db7d7235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem earlyLowerPrimitive_hasDerivAt {A x : ℝ} (hx : 0 < x) :
    HasDerivAt (earlyLowerPrimitive A)
      (-1 / (2 * Real.sqrt x) -
        (162826 / (7623 * A ^ 2)) *
          ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x) x := by
  have hs := Real.hasDerivAt_sqrt hx.ne'
  have hl := Real.hasDerivAt_log hx.ne'
  have hsq := Real.sq_sqrt hx.le
  have hs0 : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := hs.neg.sub
    (((hs.const_mul ((162826 / (7623 * A ^ 2)) / 2)).mul (hl.pow 2)))
  change HasDerivAt
    ((fun y : ℝ => -Real.sqrt y) -
      (fun y : ℝ => ((162826 / (7623 * A ^ 2)) / 2 * Real.sqrt y) * (Real.log y) ^ 2)) _ x
  apply hd.congr_deriv
  simp only [Pi.pow_apply, Nat.cast_ofNat, Nat.reduceSub, pow_one]
  field_simp [hx.ne', hs0]
  simp only [hsq]
  ring

/-- The lower integral estimate retains the complete actual floor endpoint and curvature error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variantf1d8a522bb8bea42e3ebe6b0e90a83b4a4aa01cae2d95374e4fd386320a5eec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variantf1d8a522bb8bea42e3ebe6b0e90a83b4a4aa01cae2d95374e4fd386320a5eec6.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4048b398eb5a2b69b2fc2a66739d4883b8dd26a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
