# actualPsiComplexMellinTailSeven_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cc10ce3-8485-cb08-042f-79ad20d1169a",
  "kind": "theorem",
  "lexical_name": "actualPsiComplexMellinTailSeven_mul_eq",
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
  "slug": "actualpsicomplexmellintailseven-mul-eq--9a0e86ab5c5986ce81342261",
  "source": {
    "blob": "da7ae7bc1550d178e6ac8d615537e35ce40bbdac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiMellinSeven/Variantae57ae3858003cdc187891c70c36c8413deadc34df1621b572f9a982b9eae183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a0e86ab5c5986ce81342261b42d22d83e1addadf4a0fdb8f2fdf0120adbae2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiMellinSeven/Variantae57ae3858003cdc187891c70c36c8413deadc34df1621b572f9a982b9eae183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cc10ce3-8485-cb08-042f-79ad20d1169a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiComplexMellinTailSeven_mul_eq {s : ℂ} (hs : 1 < s.re) :
    s * actualPsiComplexMellinTailSeven s =
      -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
        (Chebyshev.psi 7 : ℂ) * (7 : ℂ) ^ (-s) := by
  have hi := actualPsiComplexMellin_integrableOn hs
  have he := intervalIntegral.integral_interval_add_Ioi hi
    (actualPsiComplexMellinTailSeven_integrableOn hs)
  have hf := actualPsiComplexMellin_mul_eq_neg_zeta_deriv hs
  unfold actualPsiComplexMellin at hf
  rw [← he] at hf
  have hh := actualPsiMellinLowerSeven_eq_closed_head hs
  unfold actualPsiComplexMellinTailSeven
  linear_combination hf + hh

/-- Each continuous pole and original gamma sector is genuinely L1 before the shifted split. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiMellinSeven/Variantae57ae3858003cdc187891c70c36c8413deadc34df1621b572f9a982b9eae183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiMellinSeven/Variantae57ae3858003cdc187891c70c36c8413deadc34df1621b572f9a982b9eae183.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da7ae7bc1550d178e6ac8d615537e35ce40bbdac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
