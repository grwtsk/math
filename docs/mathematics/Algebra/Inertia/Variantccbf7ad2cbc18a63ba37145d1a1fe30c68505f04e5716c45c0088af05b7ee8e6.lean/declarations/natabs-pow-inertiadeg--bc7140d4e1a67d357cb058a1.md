# natAbs_pow_inertiaDeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61c37afa0943230d0afed6cebe5df55c361f910b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcff75dc-438b-80e6-9ada-350fc6b9acec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c794064c-b7a6-c938-cb90-2c2e4fc690fd",
  "kind": "theorem",
  "lexical_name": "natAbs_pow_inertiaDeg",
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
  "slug": "natabs-pow-inertiadeg--bc7140d4e1a67d357cb058a1",
  "source": {
    "blob": "61c37afa0943230d0afed6cebe5df55c361f910b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7140d4e1a67d357cb058a1e24d08608a55d8d6a7681a4821fedcec6c27cec2",
  "verification": {
    "reference": "docs/verification/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c794064c-b7a6-c938-cb90-2c2e4fc690fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_pow_inertiaDeg [IsDedekindDomain R] [Infinite R] [Module.Finite ℤ R] (p : ℤ)
    (P : Ideal R) [P.IsPrime] [P.LiesOver (span {p})] :
    p.natAbs ^ P.inertiaDeg ℤ = absNorm P := by
  simpa using absNorm_pow_inertiaDeg (span {p}) P

@[deprecated (since := "2026-07-03")] alias natAbs_pow_inertiaDeg' := natAbs_pow_inertiaDeg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inertia/Variantccbf7ad2cbc18a63ba37145d1a1fe30c68505f04e5716c45c0088af05b7ee8e6.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c37afa0943230d0afed6cebe5df55c361f910b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
