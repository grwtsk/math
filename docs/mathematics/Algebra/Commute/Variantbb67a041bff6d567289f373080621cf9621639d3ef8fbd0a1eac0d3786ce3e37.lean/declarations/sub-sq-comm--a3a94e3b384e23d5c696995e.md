# sub_sq_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d31d491-3545-109b-5875-2ab5674cc48b",
  "kind": "lemma",
  "lexical_name": "sub_sq_comm",
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
  "slug": "sub-sq-comm--a3a94e3b384e23d5c696995e",
  "source": {
    "blob": "a390aa21fd9e55dd62f1951aa87e1c4a392eff92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 220,
    "path": "GRWTSK/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a94e3b384e23d5c696995e9c5fc1433743c2567fe468c7cea8b08dbe4ac7f0",
  "verification": {
    "reference": "docs/verification/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d31d491-3545-109b-5875-2ab5674cc48b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sub_sq_comm (a b : R) : (a - b) ^ 2 = (b - a) ^ 2 := by
  rw [sub_sq', mul_right_comm, add_comm, sub_sq']

variable [NoZeroDivisors R] {a b : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a390aa21fd9e55dd62f1951aa87e1c4a392eff92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
