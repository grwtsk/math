# bumpCorrelationThird_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cce24b9-0e74-3bbb-3292-66ec3ac39216",
  "kind": "theorem",
  "lexical_name": "bumpCorrelationThird_hasDerivAt",
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
  "slug": "bumpcorrelationthird-hasderivat--651ce55707f6a05044e77321",
  "source": {
    "blob": "bfdfe5f23851544010fe27046b4664aa566715b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 212,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:651ce55707f6a05044e773210ab4409a19f6795dff2d20bccca104543008d817",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cce24b9-0e74-3bbb-3292-66ec3ac39216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpCorrelationThird_hasDerivAt (v : ℝ) :
    HasDerivAt bumpCorrelationThird (bumpCorrelationFourth v) v := by
  have hv := hasDerivAt_id v
  have hq := (((((((((hv.pow 8).const_mul (-280)).add ((hv.pow 7).const_mul (-3360))).add ((hv.pow
    6).const_mul (-16240))).add ((hv.pow 5).const_mul (-38080))).add ((hv.pow 4).const_mul
    (-35328))).add ((hv.pow 3).const_mul (15104))).add ((hv.pow 2).const_mul (27648))).add
    (hv.const_mul (9216)))
  have h := ((((hasDerivAt_const v (2 : ℝ)).sub hv).pow 6).mul hq).div_const 15015
  unfold bumpCorrelationThird bumpCorrelationFourth
  dsimp at h
  convert h using 1 <;> try rfl
  · funext x
    ring
  · ring

/-- The named second polynomial is the literal second ordinary derivative of B. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant20c9745c7a26bda78b3293defe7bd45032eeb687a973e079a33c8fb3aafc387d.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdfe5f23851544010fe27046b4664aa566715b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
