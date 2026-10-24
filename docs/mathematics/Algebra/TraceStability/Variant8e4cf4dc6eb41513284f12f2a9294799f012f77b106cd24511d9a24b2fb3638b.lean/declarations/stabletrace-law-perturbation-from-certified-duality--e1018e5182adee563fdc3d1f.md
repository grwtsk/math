# stableTrace_law_perturbation_from_certified_duality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5c64628a1262872810a599ea5651868a4465102",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7c75dea-562e-3d17-d85d-364207a1a4d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e2b6b80-903a-e867-3e99-bf810a105d93",
  "kind": "theorem",
  "lexical_name": "stableTrace_law_perturbation_from_certified_duality",
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
  "slug": "stabletrace-law-perturbation-from-certified-duality--e1018e5182adee563fdc3d1f",
  "source": {
    "blob": "d5c64628a1262872810a599ea5651868a4465102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1018e5182adee563fdc3d1f9a8b8b46c7f6c579fc93564e3c26c7cf360f5cb1",
  "verification": {
    "reference": "docs/verification/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e2b6b80-903a-e867-3e99-bf810a105d93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stableTrace_law_perturbation_from_certified_duality
    (expectationDifference lipschitzConstant
      lawDistance kernelDefect factor : ℝ)
    (lipschitzNonnegative : 0 ≤ lipschitzConstant)
    (duality :
      |expectationDifference| ≤
        lipschitzConstant * lawDistance)
    (displacement :
      lawDistance ≤ kernelDefect / (1 - factor)) :
    |expectationDifference| ≤
      lipschitzConstant * (kernelDefect / (1 - factor)) :=
  le_trans duality
    (mul_le_mul_of_nonneg_left
      displacement lipschitzNonnegative)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c64628a1262872810a599ea5651868a4465102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
