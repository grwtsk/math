# bne_iff_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6618f946-91f5-82a8-f387-1f818eb9f7a0",
  "kind": "theorem",
  "lexical_name": "bne_iff_ne",
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
  "slug": "bne-iff-ne--d03284ec53abf12567f51cdd",
  "source": {
    "blob": "b604e2a3f0961dd1cb465502adf8ad39c0a2a3bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 420,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantfe0dc61e7380da95224dc4a7bb577a9395c5e64fbab93c62afaa2cf7883a8de5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d03284ec53abf12567f51cddafb08a85f46d2d5c6739b62edb184325e3bfb6d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantfe0dc61e7380da95224dc4a7bb577a9395c5e64fbab93c62afaa2cf7883a8de5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6618f946-91f5-82a8-f387-1f818eb9f7a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem bne_iff_ne [BEq α] [LawfulBEq α] {a b : α} : a != b ↔ a ≠ b := by
  simp [bne]; rw [← beq_iff_eq (a := a) (b := b)]; simp [-beq_iff_eq]

/-
Added for critical pair for `¬((a != b) = true)`

1. `(a != b) = false` via `Bool.not_eq_true`
2. `¬(a ≠ b)` via `bne_iff_ne`

These will both normalize to `a = b` with the first via `bne_eq_false_iff_eq`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantfe0dc61e7380da95224dc4a7bb577a9395c5e64fbab93c62afaa2cf7883a8de5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantfe0dc61e7380da95224dc4a7bb577a9395c5e64fbab93c62afaa2cf7883a8de5.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b604e2a3f0961dd1cb465502adf8ad39c0a2a3bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
