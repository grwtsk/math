# bumpPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea428e95-351d-a0c2-bcc8-639e69085999",
  "kind": "theorem",
  "lexical_name": "bumpPrimitive_hasDerivAt",
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
  "slug": "bumpprimitive-hasderivat--81d0c9fe8c03e3f743996a9e",
  "source": {
    "blob": "72a86e9587b25dea10f08fae04cc161c402bd5f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81d0c9fe8c03e3f743996a9e7486ef90d57ff01e3551f32ef371ebbbc84e05c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea428e95-351d-a0c2-bcc8-639e69085999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpPrimitive_hasDerivAt (A x : ℝ) (hA : A ≠ 0) :
    HasDerivAt (bumpPrimitive A) (bumpInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have hd := ((((hy.sub (((hy.pow 3).const_mul 4).div_const 3)).add
    (((hy.pow 5).const_mul 6).div_const 5)).sub
    (((hy.pow 7).const_mul 4).div_const 7)).add
    ((hy.pow 9).div_const 9)).const_mul (A / Real.sqrt A)
  convert hd using 1 <;> try rfl
  dsimp [bumpInterior]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant31901f8b82f87f3c342d53bf191b1126058c2cd69fb3bbf87da0eaab7f9931df.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a86e9587b25dea10f08fae04cc161c402bd5f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
