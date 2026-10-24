# causalSourceTail_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b207722-341b-4a17-a22f-57139a91a0c0",
  "kind": "theorem",
  "lexical_name": "causalSourceTail_hasDerivAt",
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
  "slug": "causalsourcetail-hasderivat--658ca79aee3f86d6791e95d7",
  "source": {
    "blob": "f1b14700e1c49ff7c8e2b2a6e32cd525408647c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 233,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variant1bab0725f2875c7be2ffddd6977190653eb57f9f8a33fe10f6342b027087c5a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:658ca79aee3f86d6791e95d7ce0d75de881359acd3ce7ac7a04c4c736ce0cd96",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variant1bab0725f2875c7be2ffddd6977190653eb57f9f8a33fe10f6342b027087c5a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b207722-341b-4a17-a22f-57139a91a0c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalSourceTail_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (causalSourceTail A)
      (causalSourceTail A x / 2 - normalizedTest explicitSecondDerivative A x) x := by
  have heq : causalSourceTail A = fun x ↦
      -deriv (normalizedPrimitiveBump A) x - normalizedPrimitiveBump A x / 2 :=
    funext (causalSourceTail_eq hA)
  have hd := (normalizedPrimitiveBump_deriv_hasDerivAt hA x).neg.sub
    ((normalizedPrimitiveBump_hasDerivAt hA x).div_const 2)
  rw [heq]
  apply hd.congr_deriv
  rw [← (normalizedPrimitiveBump_deriv_hasDerivAt hA x).deriv,
    ← (normalizedPrimitiveBump_hasDerivAt hA x).deriv,
    ← normalizedPrimitiveBump_second_sub_quarter hA x]
  ring

/-- The actual differential equation is also an ordinary derivative equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variant1bab0725f2875c7be2ffddd6977190653eb57f9f8a33fe10f6342b027087c5a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TailV2Prebytes/Variant1bab0725f2875c7be2ffddd6977190653eb57f9f8a33fe10f6342b027087c5a8.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b14700e1c49ff7c8e2b2a6e32cd525408647c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
