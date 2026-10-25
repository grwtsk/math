# Hypercube.walkFrom_adjacentPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bcc054e4941479363a624019d9c9752d57b45ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebdfab3b-9d41-5655-37c8-a96cc079c71e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7ce181d-ed1f-85d7-7c8b-bf67c3eded2e",
  "kind": "theorem",
  "lexical_name": "Hypercube.walkFrom_adjacentPath",
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
  "slug": "hypercube-walkfrom-adjacentpath--e990f90ca1d04f40dce7c4ec",
  "source": {
    "blob": "4bcc054e4941479363a624019d9c9752d57b45ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e990f90ca1d04f40dce7c4ec841a537e2ccd1bd1f9bdcbce0cbc4e007d5c396c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ce181d-ed1f-85d7-7c8b-bf67c3eded2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hypercube.walkFrom_adjacentPath {n : Nat}
    (x : Hypercube.Point n)
    (steps : List (Fin n)) :
    Hypercube.AdjacentPath (Hypercube.walkFrom x steps) := by
  induction steps generalizing x with
  | nil =>
      simp [Hypercube.walkFrom, Hypercube.AdjacentPath]
  | cons i steps ih =>
      cases steps with
      | nil =>
          change
            Hypercube.Adjacent x (Hypercube.flip x i) ∧ True
          exact ⟨⟨i, rfl⟩, trivial⟩
      | cons j rest =>
          change
            Hypercube.Adjacent x (Hypercube.flip x i) ∧
              Hypercube.AdjacentPath
                (Hypercube.walkFrom (Hypercube.flip x i) (j :: rest))
          exact ⟨⟨i, rfl⟩, ih (Hypercube.flip x i)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bcc054e4941479363a624019d9c9752d57b45ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
