# not_separatesTarget_of_equivalent_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd7de777-d554-ac0c-79b3-d2aea4975732",
  "kind": "theorem",
  "lexical_name": "not_separatesTarget_of_equivalent_ne",
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
  "slug": "not-separatestarget-of-equivalent-ne--2a7ccbc3f8ecd11ed2a1e839",
  "source": {
    "blob": "5317dc39f6dcc69bd21053e283f26dd8cac3f82d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a7ccbc3f8ecd11ed2a1e8393e9eb7606f83e8db35e36424f5eb26cfb2413206",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd7de777-d554-ac0c-79b3-d2aea4975732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_separatesTarget_of_equivalent_ne (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Result) {x y : Object}
    (equivalent : notion.Equivalent budget x y) (differentTarget : target x ≠ target y) :
    ¬SeparatesTarget notion.policy.observe
      (notion.tests.filter (fun test => notion.policy.cost test ≤ budget)) target :=
  fun separates => differentTarget
    ((notion.determinesAt_iff_separatesTarget budget target).mpr separates equivalent)

end FiniteNotion

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationBounds/Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5317dc39f6dcc69bd21053e283f26dd8cac3f82d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
