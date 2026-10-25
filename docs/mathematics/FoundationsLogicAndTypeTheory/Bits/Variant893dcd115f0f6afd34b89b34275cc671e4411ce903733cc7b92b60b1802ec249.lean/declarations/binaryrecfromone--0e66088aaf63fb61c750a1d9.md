# binaryRecFromOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b9c400fefb17b5b42c509dca479f999ef95d3a0b36f7f0aa67110f0302a8c58",
  "kind": "def",
  "lexical_name": "binaryRecFromOne",
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
  "slug": "binaryrecfromone--0e66088aaf63fb61c750a1d9",
  "source": {
    "blob": "3fcccc90f5462c13192c0b2a557ddc4f3c9b0cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e66088aaf63fb61c750a1d98bab356e30cd2c1888fb5dfe795af4fddf503012",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b9c400fefb17b5b42c509dca479f999ef95d3a0b36f7f0aa67110f0302a8c58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryRecFromOne {C : ℕ → Sort*} (z₀ : C 0) (z₁ : C 1) (f : ∀ b n, n ≠ 0 → C n → C (bit b n)) :
    ∀ n, C n :=
  binaryRec' z₀ fun b n h ih =>
    if h' : n = 0 then by
      rw [h', h h']
      exact z₁
    else f b n h' ih
#align nat.binary_rec_from_one Nat.binaryRecFromOne

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bits/Variant893dcd115f0f6afd34b89b34275cc671e4411ce903733cc7b92b60b1802ec249.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fcccc90f5462c13192c0b2a557ddc4f3c9b0cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
