# actualMangoldtErrorConvolution_one_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3690f836-913b-a423-3f14-c44ec5aee82b",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_one_abs_le",
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
  "slug": "actualmangoldterrorconvolution-one-abs-le--8bf177aedd76fefbb64c167b",
  "source": {
    "blob": "3c14564a0332ec12f072887f5f599705e84df86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variant71c4f5334eac4d31b6e1a2336487fba4ea791643050537f0738bc18b5682039a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bf177aedd76fefbb64c167b0d9c271f798158f17b08f7722560f61c23ba092c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variant71c4f5334eac4d31b6e1a2336487fba4ea791643050537f0738bc18b5682039a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3690f836-913b-a423-3f14-c44ec5aee82b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_one_abs_le {c C s : ℝ}
    (hc : 0 < c) (hC : 0 ≤ C) (hs : 0 ≤ s)
    (hdelta : ∀ u ≥ s, |actualRelativePsiTimeError u| ≤
      C * Real.exp (-c * u ^ ((1 : ℝ) / 10))) :
    |actualMangoldtErrorConvolution 1 s| ≤
      C * Real.exp (-(c / 2) * s ^ ((1 : ℝ) / 10)) *
        (∫ u in Ioi (0 : ℝ), Real.exp (-(c / 2) * u ^ ((1 : ℝ) / 10))) +
          |Real.eulerMascheroniConstant + 1| * Real.exp (-s) := by
  rw [actualMangoldtErrorConvolution_one_eq_neg_tail hs]
  have ht := actualRelativePsiTimeError_tail_abs_le hc hC hs hdelta
  calc
    _ ≤ |-(∫ u in Ioi s, actualRelativePsiTimeError u)| +
        |(Real.eulerMascheroniConstant + 1) * Real.exp (-s)| := abs_sub _ _
    _ = |∫ u in Ioi s, actualRelativePsiTimeError u| +
        |Real.eulerMascheroniConstant + 1| * Real.exp (-s) := by
      rw [abs_neg, abs_mul, Real.abs_exp]
    _ ≤ _ := add_le_add ht le_rfl

/-- The genuine actual PNT supplies constants and an all-real tail radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variant71c4f5334eac4d31b6e1a2336487fba4ea791643050537f0738bc18b5682039a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variant71c4f5334eac4d31b6e1a2336487fba4ea791643050537f0738bc18b5682039a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c14564a0332ec12f072887f5f599705e84df86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
