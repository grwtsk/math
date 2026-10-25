# log2_terminates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e7666b99c08ae708ceaa08608e6db210fcf15f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23c4ce92-a223-5d8f-3569-6d72e75eab03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c391a7da-ea5b-9f5e-0bd7-55744c416ee8",
  "kind": "theorem",
  "lexical_name": "log2_terminates",
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
  "slug": "log2-terminates--98ca7b8f3c98dab14a28b25f",
  "source": {
    "blob": "3e7666b99c08ae708ceaa08608e6db210fcf15f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98ca7b8f3c98dab14a28b25f4900bf8edbade09aa67097abd66d69ecb7c02d79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c391a7da-ea5b-9f5e-0bd7-55744c416ee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log2_terminates : ∀ n, n ≥ 2 → n / 2 < n
  | 2, _ => by decide
  | 3, _ => by decide
  | n+4, _ => by
    rw [div_eq, if_pos]
    refine succ_lt_succ (Nat.lt_trans ?_ (lt_succ_self _))
    exact log2_terminates (n+2) (by simp)
    simp

/--
Base-two logarithm of natural numbers. Returns `⌊max 0 (log₂ n)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `Nat.log2 0 = 0`
 * `Nat.log2 1 = 0`
 * `Nat.log2 2 = 1`
 * `Nat.log2 4 = 2`
 * `Nat.log2 7 = 2`
 * `Nat.log2 8 = 3`
-/
@[expose, extern "lean_nat_log2"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variantafef53e5ebc17001038c5f4c9000e8e2856d3976bec23019266840f91743da6b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e7666b99c08ae708ceaa08608e6db210fcf15f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
