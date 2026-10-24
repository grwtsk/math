# meanWitness_shell_consistent

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
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8216f31a-d9dd-febe-faae-04e22c8b5e19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fc4fd8a-5aae-cbec-77cf-3b818422bce3",
  "kind": "theorem",
  "lexical_name": "meanWitness_shell_consistent",
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
  "slug": "meanwitness-shell-consistent--9f1924b2b2a6678d60a20f56",
  "source": {
    "blob": "9ccfc44772559db71c9f41dca871723d46802b6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 21,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WitnessConsistency/Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f1924b2b2a6678d60a20f566ff924f3464dced8ea34c378d10e68579046c6b5",
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

Occurrence: `result:5fc4fd8a-5aae-cbec-77cf-3b818422bce3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meanWitness_shell_consistent {s : GridShape} {k : Nat} :
    Consistent
      (meanWitness (Expansion.expandedShape s) k)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  change SpectralTensor.mean (decodeShell (encodeShell X)) =
    SpectralTensor.mean X
  rw [decode_encode_shell]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WitnessConsistency/Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WitnessConsistency/Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ccfc44772559db71c9f41dca871723d46802b6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
