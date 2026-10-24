# equivPair_smul_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5124bd5f92bb23ae31b94db5ec4923c652facbcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 501,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d69b66c9-acdd-43ec-3c43-57f4cc8e56d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e76c9ce8-68db-7a45-9638-c7664712cf09",
  "kind": "theorem",
  "lexical_name": "equivPair_smul_same",
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
  "slug": "equivpair-smul-same--4073e87935cbcf757bcc3839",
  "source": {
    "blob": "5124bd5f92bb23ae31b94db5ec4923c652facbcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 501,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4073e87935cbcf757bcc3839f212adb2995ac584197c0cf8c03533bd6c32a747",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e76c9ce8-68db-7a45-9638-c7664712cf09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivPair_smul_same {i} (m : M i) (w : Word M) :
    equivPair i (of m • w) = ⟨m * (equivPair i w).head, (equivPair i w).tail,
      (equivPair i w).fstIdx_ne⟩ := by
  rw [of_smul_def, ← equivPair_symm]
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantd6a6c989d015f4b3baf9fabb51f789c35c9dbc274ac4acbe0cdb2ce446c65f9a.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5124bd5f92bb23ae31b94db5ec4923c652facbcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
