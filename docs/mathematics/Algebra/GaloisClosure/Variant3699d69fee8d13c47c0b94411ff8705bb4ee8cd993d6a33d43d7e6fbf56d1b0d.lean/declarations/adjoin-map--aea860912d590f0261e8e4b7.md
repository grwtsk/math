# adjoin_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6230a9cc-c5ac-0d5a-cccb-1528526ad1c3",
  "kind": "theorem",
  "lexical_name": "adjoin_map",
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
  "slug": "adjoin-map--aea860912d590f0261e8e4b7",
  "source": {
    "blob": "2aaac67bcd23bc719b439fad45dbb6e8d7941151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 139,
    "path": "GRWTSK/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aea860912d590f0261e8e4b79734abb58621d383226bbf3a8b64ca9f25886eb9",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6230a9cc-c5ac-0d5a-cccb-1528526ad1c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_map [IsGalois k K] (f : K →ₐ[k] K) (s : Set K) [Finite s] :
    adjoin k (f '' s) = adjoin k s := by
  apply val_injective; dsimp [adjoin_val]
  rw [← IntermediateField.adjoin_map, IntermediateField.normalClosure_map_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisClosure/Variant3699d69fee8d13c47c0b94411ff8705bb4ee8cd993d6a33d43d7e6fbf56d1b0d.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2aaac67bcd23bc719b439fad45dbb6e8d7941151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
