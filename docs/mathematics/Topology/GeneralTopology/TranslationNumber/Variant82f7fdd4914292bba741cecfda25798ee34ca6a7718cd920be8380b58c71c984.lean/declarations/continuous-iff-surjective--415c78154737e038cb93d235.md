# continuous_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a39efb0d54eddd347003c197280cc04d8b93c3e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0610e82-4b87-35d7-98f5-44170f367785",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bddb9a9-efd6-0227-f112-0dab89af6331",
  "kind": "theorem",
  "lexical_name": "continuous_iff_surjective",
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
  "slug": "continuous-iff-surjective--415c78154737e038cb93d235",
  "source": {
    "blob": "a39efb0d54eddd347003c197280cc04d8b93c3e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 481,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415c78154737e038cb93d235670534010eda0486d4bd3b4d5115c2f1f71e06b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bddb9a9-efd6-0227-f112-0dab89af6331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_iff_surjective : Continuous f ↔ Function.Surjective f :=
  ⟨fun h => h.surjective f.tendsto_atTop f.tendsto_atBot, f.monotone.continuous_of_surjective⟩

/-!
### Estimates on `(f^n) x`

If we know that `f x` is `≤`/`<`/`≥`/`>`/`=` to `x + m`, then we have a similar estimate on
`f^[n] x` and `x + n * m`.

For `≤`, `≥`, and `=` we formulate both `of` (implication) and `iff` versions because implications
work for `n = 0`. For `<` and `>` we formulate only `iff` versions.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39efb0d54eddd347003c197280cc04d8b93c3e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
