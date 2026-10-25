# cornerCycle_bottomRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c37aaeec8bc9d21f3a282ecc53f4694e4af8bb77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:044e9758-57cb-edfa-011b-7df92f2abbb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a1d3ff2-b13e-acde-af09-2228b29c933b",
  "kind": "theorem",
  "lexical_name": "cornerCycle_bottomRight",
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
  "slug": "cornercycle-bottomright--8cc75211d49f1b90ae5101bb",
  "source": {
    "blob": "c37aaeec8bc9d21f3a282ecc53f4694e4af8bb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc75211d49f1b90ae5101bb4716bb45291061f3cabe9e74250bd845b66d124b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a1d3ff2-b13e-acde-af09-2228b29c933b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cornerCycle_bottomRight (s : GridShape) :
    (cornerCycleTorsion s).perm (cornerBottomRight s) = cornerTopRight s := by
  simp only [cornerCycleTorsion]
  rw [Equiv.trans_apply, Equiv.trans_apply]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerBottomRight_ne_topLeft s) (cornerBottomRight_ne_topRight s)]
  rw [Equiv.swap_apply_right]
  rw [Equiv.swap_apply_of_ne_of_ne
    (cornerTopRight_ne_bottomRight s) (cornerTopRight_ne_bottomLeft s)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellTorsion/Variantd8cda6a1a4950735a1ef2cd91b2d10f5918f1f1e16b20d18d1e8d517abccbf0b.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c37aaeec8bc9d21f3a282ecc53f4694e4af8bb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
