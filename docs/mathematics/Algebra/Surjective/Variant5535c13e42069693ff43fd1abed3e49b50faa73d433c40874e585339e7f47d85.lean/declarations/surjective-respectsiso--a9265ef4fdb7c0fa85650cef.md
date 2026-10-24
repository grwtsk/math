# surjective_respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd49cb4106671ff27035a3e1b62c59ba8f03d4b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5535c13e42069693ff43fd1abed3e49b50faa73d433c40874e585339e7f47d85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c3c05d9-7ddd-ae7f-a0ee-227cfabd61c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a00ba12-3c8d-8e7b-ef46-18ff8611dd37",
  "kind": "theorem",
  "lexical_name": "surjective_respectsIso",
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
  "slug": "surjective-respectsiso--a9265ef4fdb7c0fa85650cef",
  "source": {
    "blob": "dd49cb4106671ff27035a3e1b62c59ba8f03d4b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/Algebra/Surjective/Variant5535c13e42069693ff43fd1abed3e49b50faa73d433c40874e585339e7f47d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9265ef4fdb7c0fa85650cef864f03ab38f80b489bdd590ed3d13aa998262aff",
  "verification": {
    "reference": "docs/verification/Algebra/Surjective/Variant5535c13e42069693ff43fd1abed3e49b50faa73d433c40874e585339e7f47d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a00ba12-3c8d-8e7b-ef46-18ff8611dd37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_respectsIso : RespectsIso surjective := by
  apply surjective_stableUnderComposition.respectsIso
  intro _ _ _ _ e
  exact e.surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Surjective/Variant5535c13e42069693ff43fd1abed3e49b50faa73d433c40874e585339e7f47d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Surjective/Variant5535c13e42069693ff43fd1abed3e49b50faa73d433c40874e585339e7f47d85.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd49cb4106671ff27035a3e1b62c59ba8f03d4b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
