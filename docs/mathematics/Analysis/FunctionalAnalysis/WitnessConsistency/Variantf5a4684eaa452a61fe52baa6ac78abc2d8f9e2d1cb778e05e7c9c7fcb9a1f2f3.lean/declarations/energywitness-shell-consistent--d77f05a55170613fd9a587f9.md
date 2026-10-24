# energyWitness_shell_consistent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ccfc44772559db71c9f41dca871723d46802b6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1d92b27-7146-b8c4-dc42-7973d2d0f5ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40da2506-1f93-0ca0-d6bd-71ebb6d4fc81",
  "kind": "theorem",
  "lexical_name": "energyWitness_shell_consistent",
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
  "slug": "energywitness-shell-consistent--d77f05a55170613fd9a587f9",
  "source": {
    "blob": "9ccfc44772559db71c9f41dca871723d46802b6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WitnessConsistency/Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d77f05a55170613fd9a587f9b34a9cd42e24befe49f2998c651703d21dd47a76",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WitnessConsistency/Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40da2506-1f93-0ca0-d6bd-71ebb6d4fc81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energyWitness_shell_consistent {s : GridShape} {k : Nat}
    (G : CellGraph (Expansion.expandedShape s)) :
    Consistent
      (energyWitness k G)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  change energy G (decodeShell (encodeShell X)) = energy G X
  rw [decode_encode_shell]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WitnessConsistency/Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WitnessConsistency/Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ccfc44772559db71c9f41dca871723d46802b6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
