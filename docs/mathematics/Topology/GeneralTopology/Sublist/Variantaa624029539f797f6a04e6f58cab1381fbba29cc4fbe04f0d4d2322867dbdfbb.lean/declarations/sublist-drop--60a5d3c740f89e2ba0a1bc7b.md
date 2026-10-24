# Sublist.drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82c67f3f209c3d0ea700d6bb4d9dbbee05196230",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 658,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:509b9cea-6420-8695-3245-c95beb37da78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70d71b9e-15c2-6d4a-c5be-beec793eddd6",
  "kind": "theorem",
  "lexical_name": "Sublist.drop",
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
  "slug": "sublist-drop--60a5d3c740f89e2ba0a1bc7b",
  "source": {
    "blob": "82c67f3f209c3d0ea700d6bb4d9dbbee05196230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 658,
    "path": "GRWTSK/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a5d3c740f89e2ba0a1bc7b083a617727c430f218f2608bda1cd6e285f1c84a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70d71b9e-15c2-6d4a-c5be-beec793eddd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Sublist.drop : ∀ {l₁ l₂ : List α}, l₁ <+ l₂ → ∀ i, l₁.drop i <+ l₂.drop i
  | _, _, h, 0 => h
  | _, _, h, i + 1 => by rw [← drop_tail, ← drop_tail]; exact h.tail.drop i

/-! ### IsPrefix / IsSuffix / IsInfix -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c67f3f209c3d0ea700d6bb4d9dbbee05196230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
