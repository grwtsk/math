# inverse_sqrt_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fc7e811-1ad7-1382-1129-423a6e874d33",
  "kind": "theorem",
  "lexical_name": "inverse_sqrt_integral",
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
  "slug": "inverse-sqrt-integral--c8b87b25a566476cd3443343",
  "source": {
    "blob": "78d98141abaa3ea526adcaca6190ba42d65be9a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8b87b25a566476cd344334326ccdfb961a9842bc7d8d1ce95e6791541026346",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fc7e811-1ad7-1382-1129-423a6e874d33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_sqrt_integral (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    (∫ u in a..b, 1 / (u * Real.sqrt u)) =
      2 / Real.sqrt a - 2 / Real.sqrt b := by
  have hi := inverse_sqrt_cell_integrable a b ha hab
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u hu => inverse_sqrt_antiderivative u
      (ha.trans_le (by simpa only [min_eq_left hab] using hu.1))) hi
  convert h using 1
  ring

/-- The absolute centered prefix multiplies the original positive cell integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78d98141abaa3ea526adcaca6190ba42d65be9a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
