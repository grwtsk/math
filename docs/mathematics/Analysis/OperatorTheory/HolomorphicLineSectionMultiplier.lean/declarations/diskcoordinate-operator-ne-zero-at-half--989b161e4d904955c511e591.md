# diskCoordinate_operator_ne_zero_at_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4daee721caadc02e796fe93d2f30b4799b0a80db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 342,
      "path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionMultiplier.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7deb7fb-6acf-8b39-66cb-aa5bcade85d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2839f13c-bbf8-4cb7-c947-2e107016ccae",
  "kind": "theorem",
  "lexical_name": "diskCoordinate_operator_ne_zero_at_half",
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
  "slug": "diskcoordinate-operator-ne-zero-at-half--989b161e4d904955c511e591",
  "source": {
    "blob": "4daee721caadc02e796fe93d2f30b4799b0a80db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 342,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionMultiplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:989b161e4d904955c511e5912c8f2eb31451770d7e9cf6044c45140d75ace8dc",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2839f13c-bbf8-4cb7-c947-2e107016ccae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diskCoordinate_operator_ne_zero_at_half :
    quotientOperator diskCoordinate (MetricWeights.identity diskCover)
      (Measure.dirac halfPoint) diskCover_isOpen ≠ 0 := by
  intro h
  let M := MetricWeights.identity diskCover
  let s := diracFiniteSection M diskCover_isOpen
    (scalarSection diskCover diskCover_isOpen (constantSection disk 1)) halfPoint
  have he := congrArg (fun T : SectionQuotient M (Measure.dirac halfPoint) diskCover_isOpen →L[ℂ]
      SectionQuotient M (Measure.dirac halfPoint) diskCover_isOpen =>
        T (classOf M (Measure.dirac halfPoint) diskCover_isOpen s)) h
  change classOf M (Measure.dirac halfPoint) diskCover_isOpen
      (finiteMultiply diskCoordinate M (Measure.dirac halfPoint) diskCover_isOpen s) =
    classOf M (Measure.dirac halfPoint) diskCover_isOpen
      (finiteZero M (Measure.dirac halfPoint) diskCover_isOpen) at he
  have hv := (classOf_dirac_eq_iff M diskCover_isOpen halfPoint _ _).mp he
  change ((1 : ℂ) / 2) * 1 = 0 at hv
  norm_num at hv

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLineSectionMultiplier.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4daee721caadc02e796fe93d2f30b4799b0a80db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
