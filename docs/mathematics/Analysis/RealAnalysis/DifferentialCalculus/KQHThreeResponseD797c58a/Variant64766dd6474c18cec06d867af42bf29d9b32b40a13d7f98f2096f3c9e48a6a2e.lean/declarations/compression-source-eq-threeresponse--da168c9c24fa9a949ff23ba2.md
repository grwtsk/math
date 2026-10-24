# compression_source_eq_threeResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55ed6d5a-73f1-4100-3ea4-2bf3e2ddf9c5",
  "kind": "theorem",
  "lexical_name": "compression_source_eq_threeResponse",
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
  "slug": "compression-source-eq-threeresponse--da168c9c24fa9a949ff23ba2",
  "source": {
    "blob": "4938694d11d1a48a67b90bd81917f160ef18968d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da168c9c24fa9a949ff23ba22528423be5331b8cfa41dad71ff93341dc860fb7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55ed6d5a-73f1-4100-3ea4-2bf3e2ddf9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compression_source_eq_threeResponse (A : ℝ) (hA : 1 ≤ A) :
    KQHSourceCompression.compression A (-1 / 4) (1 / A ^ 2) =
      threeResponseNumerator A := by
  apply (div_left_inj' (ne_of_gt (source_normalization_pos A hA))).mp
  exact (KQHSourceCompression.residual_eq_compression A hA).symm.trans
    (mertensResidual_eq_threeResponse A hA)

end FormalResearch.RiemannHypothesis.KQHThreeResponse
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponseD797c58a/Variant64766dd6474c18cec06d867af42bf29d9b32b40a13d7f98f2096f3c9e48a6a2e.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4938694d11d1a48a67b90bd81917f160ef18968d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
