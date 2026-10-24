# prod_inter_mul_prod_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc6cb87c-763a-da7c-3325-d9d3bf486d95",
  "kind": "theorem",
  "lexical_name": "prod_inter_mul_prod_sdiff",
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
  "slug": "prod-inter-mul-prod-sdiff--1e5060b747eb26a969e3beb1",
  "source": {
    "blob": "b74e70a8df5623b0807138d2bc77ba3fa1c41e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e5060b747eb26a969e3beb197275327427041131657770a919c89109712ac26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc6cb87c-763a-da7c-3325-d9d3bf486d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_inter_mul_prod_sdiff [DecidableEq ι] (s t : Finset ι) (f : ι → M) :
    (∏ x ∈ s ∩ t, f x) * ∏ x ∈ s \ t, f x = ∏ x ∈ s, f x := by
  convert! (s.prod_piecewise t f f).symm
  simp +unfoldPartialApp [Finset.piecewise]

@[deprecated (since := "2026-06-03")] alias prod_inter_mul_prod_diff := prod_inter_mul_prod_sdiff

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variantfa176f28198cad44ffdf65834d72c94fc374bd540b69cc9881c95eb1b7c2f749.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74e70a8df5623b0807138d2bc77ba3fa1c41e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
