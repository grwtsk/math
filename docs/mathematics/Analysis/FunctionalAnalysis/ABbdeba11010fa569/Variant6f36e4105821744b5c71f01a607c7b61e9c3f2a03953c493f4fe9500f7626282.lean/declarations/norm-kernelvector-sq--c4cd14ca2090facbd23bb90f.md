# norm_kernelVector_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1678f05-3449-6b8e-9a1c-2df63da87d36",
  "kind": "theorem",
  "lexical_name": "norm_kernelVector_sq",
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
  "slug": "norm-kernelvector-sq--c4cd14ca2090facbd23bb90f",
  "source": {
    "blob": "4f943565eafacf0bd7d41d74072fc98d9189c16a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 28,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ABbdeba11010fa569/Variant6f36e4105821744b5c71f01a607c7b61e9c3f2a03953c493f4fe9500f7626282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4cd14ca2090facbd23bb90f9edb74d35d94ba9e46c81f8490f4d63c015c1f84",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ABbdeba11010fa569/Variant6f36e4105821744b5c71f01a607c7b61e9c3f2a03953c493f4fe9500f7626282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1678f05-3449-6b8e-9a1c-2df63da87d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_kernelVector_sq (index : Index) :
    ‖kernelVector kernel index‖ ^ 2 =
      (kernel index index).re := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), inner_kernelVector]
  exact congrFun RCLike.re_eq_complex_re _

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ABbdeba11010fa569/Variant6f36e4105821744b5c71f01a607c7b61e9c3f2a03953c493f4fe9500f7626282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ABbdeba11010fa569/Variant6f36e4105821744b5c71f01a607c7b61e9c3f2a03953c493f4fe9500f7626282.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f943565eafacf0bd7d41d74072fc98d9189c16a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
