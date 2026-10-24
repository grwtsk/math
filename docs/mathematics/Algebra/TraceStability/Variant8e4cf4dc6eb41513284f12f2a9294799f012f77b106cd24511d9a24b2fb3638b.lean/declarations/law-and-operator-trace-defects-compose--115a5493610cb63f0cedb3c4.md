# law_and_operator_trace_defects_compose

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
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8140adaa-54b8-3c6d-ecbe-df34d7de718a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:173f17d6-442a-fdd7-5fcc-b6315d8ddae0",
  "kind": "theorem",
  "lexical_name": "law_and_operator_trace_defects_compose",
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
  "slug": "law-and-operator-trace-defects-compose--115a5493610cb63f0cedb3c4",
  "source": {
    "blob": "d5c64628a1262872810a599ea5651868a4465102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115a5493610cb63f0cedb3c40316edcc54ca02e7e272f22a05360b0616bb1e99",
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

Occurrence: `result:173f17d6-442a-fdd7-5fcc-b6315d8ddae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem law_and_operator_trace_defects_compose
    (canonical perturbedAtCanonical perturbed : ℝ)
    (lawDefect operatorDefect : ℝ)
    (lawBound :
      |perturbed - perturbedAtCanonical| ≤ lawDefect)
    (operatorBound :
      |perturbedAtCanonical - canonical| ≤ operatorDefect) :
    |perturbed - canonical| ≤ lawDefect + operatorDefect := by
  have decomposition :
      perturbed - canonical =
        (perturbed - perturbedAtCanonical) +
          (perturbedAtCanonical - canonical) := by
    ring
  rw [decomposition]
  exact le_trans (abs_add_le _ _)
    (add_le_add lawBound operatorBound)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TraceStability/Variant8e4cf4dc6eb41513284f12f2a9294799f012f77b106cd24511d9a24b2fb3638b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c64628a1262872810a599ea5651868a4465102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
