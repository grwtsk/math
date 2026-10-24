# image_const_div_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:286a8425-e0b9-d22c-b6e6-f0aac079f215",
  "kind": "theorem",
  "lexical_name": "image_const_div_Ioc",
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
  "slug": "image-const-div-ioc--ec8833a5065b98c8daf16205",
  "source": {
    "blob": "d34066aa9d23d2a1fcf990f5552cbef0404e9dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 418,
    "path": "GRWTSK/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec8833a5065b98c8daf16205b4eed5f65263d95d32c72f5f3f39f9efb7208a01",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:286a8425-e0b9-d22c-b6e6-f0aac079f215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_const_div_Ioc : (fun x => a / x) '' Ioc b c = Ico (a / c) (a / b) := by
  have := image_comp (fun x => a * x) fun x => x⁻¹; dsimp [Function.comp_def] at this
  simp [div_eq_mul_inv, this, mul_comm]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interval/Variantcb3a21d790eb74c0505d4db2c6187214df5bac6036d9a6989ae424b1664b3982.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34066aa9d23d2a1fcf990f5552cbef0404e9dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
