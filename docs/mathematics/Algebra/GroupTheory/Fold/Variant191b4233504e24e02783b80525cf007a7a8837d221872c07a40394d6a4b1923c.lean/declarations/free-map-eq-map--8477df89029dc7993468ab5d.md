# Free.map_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4faa7832c440e5f00061fe869f8a933d64bffc79",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d18d9c2-dd32-a7fa-3748-8d89a704401f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e3dec68-4b60-b360-8f97-9b3e94823336",
  "kind": "theorem",
  "lexical_name": "Free.map_eq_map",
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
  "slug": "free-map-eq-map--8477df89029dc7993468ab5d",
  "source": {
    "blob": "4faa7832c440e5f00061fe869f8a933d64bffc79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8477df89029dc7993468ab5d4eafb63b87da24f3cb8ef676885c83c85c8b1c74",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e3dec68-4b60-b360-8f97-9b3e94823336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Free.map_eq_map (f : α → β) (xs : List α) :
    f <$> xs = (FreeMonoid.toList (FreeMonoid.map f (FreeMonoid.ofList xs))) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Fold/Variant191b4233504e24e02783b80525cf007a7a8837d221872c07a40394d6a4b1923c.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4faa7832c440e5f00061fe869f8a933d64bffc79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
