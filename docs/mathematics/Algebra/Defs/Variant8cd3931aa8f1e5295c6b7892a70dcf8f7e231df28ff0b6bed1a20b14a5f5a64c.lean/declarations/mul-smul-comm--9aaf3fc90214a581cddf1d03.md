# mul_smul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d540d5fa819588cf2012d189d3b2cfd0552a7c23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23d34532-8b60-3ec3-c1b1-248c26cc6d6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a906d271-fe51-0bae-79fd-a366794b0d8c",
  "kind": "theorem",
  "lexical_name": "mul_smul_comm",
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
  "slug": "mul-smul-comm--9aaf3fc90214a581cddf1d03",
  "source": {
    "blob": "d540d5fa819588cf2012d189d3b2cfd0552a7c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 321,
    "path": "GRWTSK/Algebra/Defs/Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aaf3fc90214a581cddf1d033a5e5ddee56ec7782851cbd5488e414eacb122be",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a906d271-fe51-0bae-79fd-a366794b0d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_smul_comm (s : R) (x y : A) : x * s • y = s • (x * y) := by
  rw [smul_def, smul_def, left_comm]

/-- This is just a special case of the global `smul_mul_assoc` lemma that requires less typeclass
search (and was here first). -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant8cd3931aa8f1e5295c6b7892a70dcf8f7e231df28ff0b6bed1a20b14a5f5a64c.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d540d5fa819588cf2012d189d3b2cfd0552a7c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
