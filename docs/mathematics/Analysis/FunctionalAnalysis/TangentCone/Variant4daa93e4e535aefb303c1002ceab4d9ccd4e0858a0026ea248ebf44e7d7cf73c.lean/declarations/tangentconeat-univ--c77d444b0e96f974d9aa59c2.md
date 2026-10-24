# tangentConeAt_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adf5607b-8b68-fbb6-053a-d6697a482b24",
  "kind": "theorem",
  "lexical_name": "tangentConeAt_univ",
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
  "slug": "tangentconeat-univ--c77d444b0e96f974d9aa59c2",
  "source": {
    "blob": "aeb23b20849a86a880f5b34cb2fc21550fcb7893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c77d444b0e96f974d9aa59c2bacf7b959e9406ec34f414591fcce420f40d43f8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adf5607b-8b68-fbb6-053a-d6697a482b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentConeAt_univ : tangentConeAt 𝕜 univ x = univ :=
  let ⟨_r, hr₀, hr⟩ := exists_norm_lt_one 𝕜
  eq_univ_of_forall fun _ ↦ mem_tangentConeAt_of_pow_smul (norm_pos_iff.1 hr₀) hr <|
    Eventually.of_forall fun _ ↦ mem_univ _

@[deprecated (since := "2025-04-27")] alias tangentCone_univ := tangentConeAt_univ

@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb23b20849a86a880f5b34cb2fc21550fcb7893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
