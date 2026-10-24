# regular_rieszMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83d04adce60504024bdcdce126d57de741d3fb955bed64c2939fc4b27ebde327",
  "kind": "instance",
  "lexical_name": "regular_rieszMeasure",
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
  "slug": "regular-rieszmeasure--bf87ce3aac8a83e70383d8a0",
  "source": {
    "blob": "76072544280c8e16574e79284f627a921a700291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 365,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf87ce3aac8a83e70383d8a05e0a687a85f6559c81eb1d00c9a5089c33efd714",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83d04adce60504024bdcdce126d57de741d3fb955bed64c2939fc4b27ebde327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance regular_rieszMeasure : (rieszMeasure Λ).Regular :=
  (rieszContent _).regular

end Construction

section integralPositiveLinearMap

variable {μ ν : Measure X} [LocallyCompactSpace X]

/-! We show that `RealRMK.rieszMeasure` is a bijection between positive linear functionals on
`C_c(X, ℝ)` and regular measures with inverse `RealRMK.integralPositiveLinearMap`. -/

/-- Note: the assumption `IsFiniteMeasureOnCompacts μ` cannot be removed. For example, if
`μ` is infinite on any nonempty set and `ν = 0`, then the hypotheses are satisfied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76072544280c8e16574e79284f627a921a700291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
