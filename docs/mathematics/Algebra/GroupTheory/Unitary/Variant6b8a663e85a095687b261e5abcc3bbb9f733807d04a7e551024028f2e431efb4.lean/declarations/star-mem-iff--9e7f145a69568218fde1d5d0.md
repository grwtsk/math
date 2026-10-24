# star_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d74e0a7-63a6-5554-4465-40fa79ebef70",
  "kind": "theorem",
  "lexical_name": "star_mem_iff",
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
  "slug": "star-mem-iff--9e7f145a69568218fde1d5d0",
  "source": {
    "blob": "850608a8d5a54769347bc24e59c144d262412bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e7f145a69568218fde1d5d0292c49820942c5244df98fbbfabfbbf296483e06",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d74e0a7-63a6-5554-4465-40fa79ebef70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_mem_iff {U : R} : star U ∈ unitary R ↔ U ∈ unitary R :=
  ⟨fun h => star_star U ▸ star_mem h, star_mem⟩
#align unitary.star_mem_iff unitary.star_mem_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Unitary/Variant6b8a663e85a095687b261e5abcc3bbb9f733807d04a7e551024028f2e431efb4.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850608a8d5a54769347bc24e59c144d262412bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
