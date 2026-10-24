# actual_row_bound_for_root_consumer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caa39172-fa56-465a-a135-339d5ed6f6fb",
  "kind": "theorem",
  "lexical_name": "actual_row_bound_for_root_consumer",
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
  "slug": "actual-row-bound-for-root-consumer--d2901c5580d46b1ccf42a585",
  "source": {
    "blob": "fa6afeffdfdc3f1e96119ebce91c308bc1035c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPeanoCubicTypeAgreement/Variant09f374fdc23c48874e4703b3213e345cf1b8e38a2d5ff7c41598cb24d566d712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2901c5580d46b1ccf42a585afcfb665aa64fe28cee59dc1e9f41dd964932380",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualPeanoCubicTypeAgreement/Variant09f374fdc23c48874e4703b3213e345cf1b8e38a2d5ff7c41598cb24d566d712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caa39172-fa56-465a-a135-339d5ed6f6fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_row_bound_for_root_consumer (A : ℝ) (hA : 91 ≤ A) :
    ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4 := by
  intro d _
  exact actual_root_remainder_abs_le A (Real.log (d : ℝ)) hA

end RH16SignedIndependentLowerKernelReview
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualPeanoCubicTypeAgreement/Variant09f374fdc23c48874e4703b3213e345cf1b8e38a2d5ff7c41598cb24d566d712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPeanoCubicTypeAgreement/Variant09f374fdc23c48874e4703b3213e345cf1b8e38a2d5ff7c41598cb24d566d712.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa6afeffdfdc3f1e96119ebce91c308bc1035c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
