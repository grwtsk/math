# even_ceiling_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4426c9bf35d52b939f7af517a1017a9bf257dd05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 8,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0578cdcd-fe4d-85e5-d51e-2cc10d9a5670",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31c85a9e-573d-5cb5-ccc9-3db8eecb3520",
  "kind": "theorem",
  "lexical_name": "even_ceiling_preserves",
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
  "slug": "even-ceiling-preserves--6825ca1fdb8ae7a2d71a6dbb",
  "source": {
    "blob": "4426c9bf35d52b939f7af517a1017a9bf257dd05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11,
    "line": 8,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotationParity/Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6825ca1fdb8ae7a2d71a6dbb6b27338516f0d9d92d3deca33b59469d6f774cc5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotationParity/Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31c85a9e-573d-5cb5-ccc9-3db8eecb3520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–11.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_ceiling_preserves (C : Nat) (epsilon : Bool) (h : C % 2 = 0) :
    orientationStep C epsilon = epsilon := by
  simp [orientationStep, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotationParity/Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RotationParity/Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4426c9bf35d52b939f7af517a1017a9bf257dd05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
