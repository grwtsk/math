# intercept_positive_of_actual_bridges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e42e81fa-ee92-b069-56d0-c2f26fca1744",
  "kind": "theorem",
  "lexical_name": "intercept_positive_of_actual_bridges",
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
  "slug": "intercept-positive-of-actual-bridges--d2f361bc9e79f04149cf1dd9",
  "source": {
    "blob": "e9d8facf3252d7cb3f1eb640b7674a4b54b2fd81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 435,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f361bc9e79f04149cf1dd9cefb1ab8279dd933b39243ce9fbd7dd4d4909dc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e42e81fa-ee92-b069-56d0-c2f26fca1744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intercept_positive_of_actual_bridges (g1 B1 : ℝ)
    (hg1 : stieltjesLowerFour ≤ g1) (hB1 : finiteProperPowerMoment ≤ B1) :
    0 < Real.eulerMascheroniConstant^2+2*g1+B1-2 := by
  have hg := Real.one_half_lt_eulerMascheroniConstant
  have hs := stieltjesLowerFour_gt_neg_quarter
  have hb := finiteProperPowerMoment_gt_nine_quarters
  have hgamma : (1:ℝ)/4 < Real.eulerMascheroniConstant^2 := by nlinarith
  nlinarith

end ContinuousResearch.ArithmeticInterceptFinite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9d8facf3252d7cb3f1eb640b7674a4b54b2fd81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
