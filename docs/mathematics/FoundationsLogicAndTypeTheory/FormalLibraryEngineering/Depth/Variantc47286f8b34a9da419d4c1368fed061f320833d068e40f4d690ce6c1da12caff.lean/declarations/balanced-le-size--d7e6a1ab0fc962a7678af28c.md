# Balanced.le_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a75ad3764fb4ad8eaa15192c3ab65425f46b7f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57f7a969-8729-e1f3-4fb1-72c5e1e01663",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed1ab94f-4c64-76a6-3af9-e4fea0dd010d",
  "kind": "theorem",
  "lexical_name": "Balanced.le_size",
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
  "slug": "balanced-le-size--d7e6a1ab0fc962a7678af28c",
  "source": {
    "blob": "1a75ad3764fb4ad8eaa15192c3ab65425f46b7f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7e6a1ab0fc962a7678af28ca5bbd48cd273118a9f48a7ec0918878206223930",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed1ab94f-4c64-76a6-3af9-e4fea0dd010d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Balanced.le_size : @Balanced α t c n → 2 ^ depthLB c n ≤ t.size + 1
  | .nil => Nat.le_refl _
  | .red hl hr => by
    rw [size, Nat.add_right_comm (size _), Nat.add_assoc, depthLB, Nat.pow_succ, Nat.mul_two]
    exact Nat.add_le_add hl.le_size hr.le_size
  | .black hl hr => by
    rw [size, Nat.add_right_comm (size _), Nat.add_assoc, depthLB, Nat.pow_succ, Nat.mul_two]
    refine Nat.add_le_add (Nat.le_trans ?_ hl.le_size) (Nat.le_trans ?_ hr.le_size) <;>
      exact Nat.pow_le_pow_right (by decide) (depthLB_le ..)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantc47286f8b34a9da419d4c1368fed061f320833d068e40f4d690ce6c1da12caff.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a75ad3764fb4ad8eaa15192c3ab65425f46b7f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
