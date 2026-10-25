# le_of_sub_le_sub_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee6b388a-daa1-7e48-b5af-06d6a07d18ca",
  "kind": "theorem",
  "lexical_name": "le_of_sub_le_sub_right",
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
  "slug": "le-of-sub-le-sub-right--a975af16193ae58a7db39d0f",
  "source": {
    "blob": "a85f97229f1cc38183471a18f15b4b1ce06cde48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1010,
    "line": 1008,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a975af16193ae58a7db39d0fa22d50cf76c3f73764bda2b929bf016d5669a460",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee6b388a-daa1-7e48-b5af-06d6a07d18ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1008–1010.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem le_of_sub_le_sub_right {a b c : Int} (h : a - c ≤ b - c) : a ≤ b :=
  Int.le_of_add_le_add_right h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean#L1008).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85f97229f1cc38183471a18f15b4b1ce06cde48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
